import {UserService} from "./service-type/user.service-type"
import httpError from 'http-errors';
import * as crypto from "crypto";
import {AppDataSource} from "../config/data-source";
import {User} from "../models/user.model";
import {Repository} from "typeorm";
import {NextFunction, Request, Response} from "express";
import {Game} from "../models/game.model";
import {Order} from "../models/order.model";
import {Store} from "../models/store.model";
import {Review} from "../models/review.model";
import {Delegator} from "../models/delegator.model";
import {RedisClientType, createClient} from 'redis';
const jwt = require('../middlewares/jwt');


export class UserServiceImpl implements UserService {

    userRepository: Repository<User> = AppDataSource.getRepository(User);
    gameRepository: Repository<Game> = AppDataSource.getRepository(Game);
    delegatorRepository: Repository<Delegator> = AppDataSource.getRepository(Delegator);
    orderRepository: Repository<Order> = AppDataSource.getRepository(Order);
    storeRepository: Repository<Store> = AppDataSource.getRepository(Store);
    reviewRepository: Repository<Review> = AppDataSource.getRepository(Review);
    redisClient: RedisClientType = createClient({ url:'redis://localhost:6379'});

    public registerUser = async (req: Request, res: Response, next: NextFunction) => {

        let existedUser = await this.findUser(req, res, next);

        if(existedUser) {
            return res.json({
                message: 'user already existed'
            });
        }

        const user = {
            phone_number: req.body.phone_number,
            password: this.hashPassword(req.body.password),
            nickname: req.body.nickname,
            exemption_count : 0
        }

        await this.userRepository.save(user).then(() => {
            return res.status(200).json({message : 'account created'});
        }).catch((err) => {
            return next(httpError(500, 'Server Error'));
        })
    }

    private hashPassword = (password: string) => {
        return crypto.createHash('sha256').update(password).digest('base64');
    }

    private findUser = async (req: Request, res: Response, next: NextFunction) => {

        return await this.userRepository.findOneBy({
            phone_number: req.body.phone_number,
            password: this.hashPassword(req.body.password)
        }).catch((err) => {
            return next(err);
        })
    }

    public login = async (req: Request, res: Response, next: NextFunction) => {
        let authenticatedUser = await this.findUser(req, res, next);

        if(authenticatedUser) {
            const jwtToken = await jwt.sign(authenticatedUser);
            return res.status(200).json({
                user: authenticatedUser,
                token: jwtToken
            });
        }

        return next(httpError(400, 'UnAuthorized User Request'));
    }

    public setUserTown = async (req: Request, res: Response, next: NextFunction) => {
        const jwtToken = req.header('token')
        const user = await jwt.verify(jwtToken)

        this.userRepository.update({
            user_id: user.id
        },{
            self_posx: req.body.self_posx,
            self_posy: req.body.self_posy
        }).then((user) => {
            return res.status(200).end()
        }).catch((err) => {
            return next(httpError(500, 'Server Error'))
        })
    }

    public checkDuplicatePhoneNumber = async(req: Request, res: Response, next: NextFunction) => {
        let duplicatedUser: void | User | null = await this.userRepository.findOneBy({
            phone_number: req.body.phone_number,
        }).catch((err) => {
            return next(err)
        })

        if(duplicatedUser) {
            return res.json({ message : 'existed'})
        }

        return res.json({ message : 'not existed'})
    }

    /*
    * 사용자가 대표로 지정된 주문의 주문정보에서 상점 정보를 통해 상점을 조회
    * */
    public getTestData = async (req: Request, res: Response, next: NextFunction) => {

        let findUser = await this.userRepository.findOneBy({
            user_id : 1
        }).catch((err) => console.log(err))

        let delegator = await this.delegatorRepository.findOneBy({
            delegator_id:1
        }).catch((err) => console.log(err))

        let order = await this.orderRepository.findOneBy({
            delegator : delegator as Delegator
        }).catch((err) => console.log(err))

        let store_name: string;
        if(order) {
            store_name = order.store_name;
        }
        let store = await this.storeRepository.findOneBy({
            store_name: store_name
        }).catch((err) => console.log(err));

        await this.redisClient.connect();
        await this.redisClient.set("store", JSON.stringify(store)).catch((err) => {console.log(err)}).then(() => {
            this.redisClient.quit();
        })
        return res.json({ result: store});
    }
    public getTestDataByRedis = async (req: Request, res: Response, next: NextFunction) => {

        await this.redisClient.connect();
        let value = await this.redisClient.get("store").then((result) => {
            this.redisClient.quit();
            return result;
        });

        let store = JSON.parse(value);
        return res.json({ result: store});
        //5배 차이
    }
}
