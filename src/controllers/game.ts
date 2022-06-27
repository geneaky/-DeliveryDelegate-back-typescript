import * as express from 'express'
import {Controller} from "../utils/base-types"
import {GameServiceImpl} from '../services/game_service'
import {GameService} from "../services/service-type/game.service-type";


export class GameController implements Controller {
    public path = "/games"
    public router = express.Router()
    private gameService: GameService = new GameServiceImpl()

    constructor() {
        this.initializeRoutes()
    }

    private initializeRoutes() {
        this.router.post('/register', (req, res, next) => {
            this.gameService.createGame(req, res, next);
        });

        this.router.get('/rooms', (req, res, next) => {
            this.gameService.findGames(req, res, next);
        });
    }
}