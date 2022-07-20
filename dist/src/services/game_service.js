var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import { Game } from "../models/game.model";
import { AppDataSource } from "../config/data-source";
import { Delegator } from "../models/delegator.model";
import { Jwt } from "../middlewares/jwt";
import { v4 } from "uuid";
export class GameServiceImpl {
    constructor() {
        this.gameRepository = AppDataSource.getRepository(Game);
        this.delegatorRepository = AppDataSource.getRepository(Delegator);
        this.jwt = new Jwt();
        this.createGame = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            const user = yield this.jwt.verify(req.header('token'));
            const room_name = v4();
            const game = {
                game_type: req.body.game_type,
                game_name: req.body.game_name,
                population: req.body.population,
                landmark_posx: req.body.landmark_posx,
                landmark_posy: req.body.landmark_posy,
                socket_room_name: room_name
            };
            const savedGame = yield this.gameRepository.save(game).catch((err) => {
                return next(err);
            });
            const delegator = {
                game: savedGame,
                user: user
            };
            this.delegatorRepository.save(delegator).catch((err) => {
                return next(err);
            });
            res.status(200).json({
                name: room_name,
                message: 'socket room created'
            });
        });
        this.findGames = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            const games = this.gameRepository.find().catch((err) => {
                return next(err);
            });
            res.status(200).json({
                games: games
            });
        });
    }
}
//# sourceMappingURL=game_service.js.map