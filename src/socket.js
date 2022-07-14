const app = require('./app');
const { createServer } = require('http');
const { Server } = require('socket.io');
const jwt = require('./middlewares/jwt');
const {User, Delegator, Order, Game} = require('./models');
const fs = require('fs');

const httpServer = createServer(app);
const io = new Server(httpServer, {});

const gameSocketNameSpace = io.of('/game');

gameSocketNameSpace.on('connection', (socket) => {

    //게임 참석
    socket.on('attend',async ({token,game_id,room_name, size,order}) => {
        const user = await jwt.verify(token);

        if((await gameSocketNameSpace.in(room_name).allSockets()).size === size) {
            console.log('인원 초과');
            socket.emit('population', '인원 초과');
            return;
        }

        const delegator = await Delegator.create({
            game_id: game_id,
            user_id: user.id
        }).catch((err) => {
            console.log(err);
            console.log(1);
            return socket.disconnect();
        });

        await Order.create({
            delegator_id: delegator.delegator_id,
            store_name: order.store_name,
            mapx: order.mapx,
            mapy: order.mapy,
            detail: order.detail,
        }).catch((err) => {
            console.log(err);
            console.log(2);
            return socket.disconnect();
        });

        socket.join(room_name);
        socket.to(room_name).emit('attend', socket.id+'입장');
    });

    //안드로이드 게임 결과 전송
    socket.on('game_result',async ({token,game_id,room_name,nickname,ranking}, next) => {
        const user = await jwt.verify(token);

        await Delegator.update({
            ranking: ranking
        },{
            where:{
                user_id: user.id,
                game_id: game_id
            }
        }).catch((err) => {
            console.log(err);
            return next(err); // 재시도 처리 필요
        });

        if(ranking === 1) {
            socket.to(room_name).emit('game_result', '대표자'+ nickname);
        }
    });

    socket.on('delegator_run_away', async(socket,{token,game_id,room_name,nickname,ranking}, next) => {
        const user = await jwt.verify(token);
        const user_id = user.id;

        await Delegator.delete({
            include:[{
                model: User,
                where: { user_id : user_id}
            }],
            where: User.user_id
        }).catch((err) => {
            console.log(err);
            return next(err);
        });

        socket.broadcast.to(room_name).emit('delegator_run_away', '대표자가 탈주했습니다');
    });

    //대표자 다시 선정 -> 안드로이드에서 탈주 알림 받은 후 -> '대표자 다시 선정' 이벤트 호출
    socket.on('delegator_re_ranking', async({token,game_id,room_name,nickname,ranking}, next) => {
        const user = await jwt.verify(token);

        const new_ranking = ranking - 1;

        await Delegator.update({
            ranking: new_ranking
        },{
            where:{
                user_id: user.id,
                game_id: game_id
            }
        }).catch((err) => {
            console.log(err);
            return next(err); // 재시도 처리 필요
        });

        if(new_ranking === 1) {
            socket.to(room_name)
                .emit('delegator_re_ranking', {
                    msg:'대표자'+ nickname,
                    ranking: new_ranking
                });
        }
    });

    //대표자 랜드마크 도착 -> 안드로이드에서 대표자가 랜드마크에 도착하면 해당 이벤트를 참여자들에게 알림
    socket.on('delegator_arrive', ({token,game_id,room_name, }) => {
        socket.broadcast.to(room_name).emit('delegator_arrive', '대표자가 랜드마크에 도착했습니다');
    });

    //게임 종료
    socket.on('game_end',(socket) => {
        socket.disconnect();
    });

    //게임 종료 후 게임 삭제 (대표자가 삭제) --> 게임 생성하자마자 삭제하는 경우도 있음
    socket.on('game_remove', async({room_name,ranking},next) => {
        if(ranking === 1) {
            await Delegator.delete({
                include:[
                    {
                        model: Game,
                        where: { socket_room_name : room_name }
                    }],
                where: { game_id : Game.game_id }
            }).catch((err) => {
                console.log(err);
                return next(err);
            });

            await Game.delete({
                where: { socket_room_name: room_name}
            }).catch((err) => {
                console.log(err);
                return next(err);
            })
        }
    })

});

httpServer.listen(8080,() => {
    const dir = './uploads';
    if (!fs.existsSync(dir)){fs.mkdirSync(dir);}

    console.log('Server Start');
});