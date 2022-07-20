import * as express from 'express';
import { GameServiceImpl } from '../services/game_service';
export class GameController {
    constructor() {
        this.path = "/games";
        this.router = express.Router();
        this.gameService = new GameServiceImpl();
        this.initializeRoutes();
    }
    initializeRoutes() {
        this.router.post('/register', (req, res, next) => {
            this.gameService.createGame(req, res, next);
        });
        this.router.get('/rooms', (req, res, next) => {
            this.gameService.findGames(req, res, next);
        });
    }
}
//# sourceMappingURL=game.js.map