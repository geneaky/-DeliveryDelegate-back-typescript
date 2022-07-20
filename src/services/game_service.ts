import {GameService} from './service-type/game.service-type'
import {Repository} from "typeorm";
import {Game} from "../models/game.model";
import {AppDataSource} from "../config/data-source";
import {Delegator} from "../models/delegator.model";
import { Jwt } from "../middlewares/jwt";
import { v4 } from "uuid";

export class GameServiceImpl implements GameService{

    gameRepository: Repository<Game> = AppDataSource.getRepository(Game)
    delegatorRepository: Repository<Delegator> = AppDataSource.getRepository(Delegator)
    jwt = new Jwt();

    public createGame = async (req, res, next) => {
        const user = await this.jwt.verify(req.header('token'))

        const room_name = v4()

        const game = {
            game_type: req.body.game_type,
            game_name: req.body.game_name,
            population: req.body.population,
            landmark_posx: req.body.landmark_posx,
            landmark_posy: req.body.landmark_posy,
            socket_room_name: room_name
        };

        const savedGame: Game = await this.gameRepository.save(game).catch((err) => {
            return next(err);
        })

        const delegator = {
            game: savedGame,
            user: user
        }

        this.delegatorRepository.save(delegator).catch((err) => {
            return next(err)
        })

        res.status(200).json({
            name: room_name,
            message: 'socket room created'
        })
    }

    public findGames = async (req, res, next) => {

        const games = this.gameRepository.find().catch((err) => {
            return next(err)
        })

        res.status(200).json({
            games: games
        })
    }

}