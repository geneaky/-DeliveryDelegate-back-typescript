"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.GameServiceImpl = void 0;
const game_model_1 = require("../models/game.model");
const data_source_1 = require("../config/data-source");
const delegator_model_1 = require("../models/delegator.model");
const jwt_1 = require("../middlewares/jwt");
const uuid_1 = require("uuid");
class GameServiceImpl {
    constructor() {
        this.gameRepository = data_source_1.AppDataSource.getRepository(game_model_1.Game);
        this.delegatorRepository = data_source_1.AppDataSource.getRepository(delegator_model_1.Delegator);
        this.jwt = new jwt_1.Jwt();
        this.createGame = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            const user = yield this.jwt.verify(req.header('token'));
            const room_name = (0, uuid_1.v4)();
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
exports.GameServiceImpl = GameServiceImpl;
