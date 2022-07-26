"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.GameController = void 0;
var express = __importStar(require("express"));
var game_service_1 = require("../services/game_service");
var GameController = (function () {
    function GameController() {
        this.path = "/games";
        this.router = express.Router();
        this.gameService = new game_service_1.GameServiceImpl();
        this.initializeRoutes();
    }
    GameController.prototype.initializeRoutes = function () {
        var _this = this;
        this.router.post('/register', function (req, res, next) {
            _this.gameService.createGame(req, res, next);
        });
        this.router.get('/rooms', function (req, res, next) {
            _this.gameService.findGames(req, res, next);
        });
    };
    return GameController;
}());
exports.GameController = GameController;
//# sourceMappingURL=game.js.map