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
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.App = void 0;
var express_1 = __importDefault(require("express"));
var game_1 = require("./controllers/game");
var map_1 = require("./controllers/map");
var store_1 = require("./controllers/store");
var users_1 = require("./controllers/users");
var data_source_1 = require("./config/data-source");
var dotenv = __importStar(require("dotenv"));
dotenv.config();
var App = (function () {
    function App(controllers, port) {
        this.app = (0, express_1.default)();
        this.port = port;
        this.initializeMiddlewares();
        this.connectToDatabase();
        this.initializeControllers(controllers);
        this.initializeErrorHandling();
    }
    App.prototype.listen = function () {
        this.app.listen(this.port, function () {
            console.log("server start");
        });
    };
    App.prototype.getServer = function () {
        return this.app;
    };
    App.prototype.connectToDatabase = function () {
        data_source_1.AppDataSource.initialize()
            .then(function () {
            console.log('db connected');
        }).catch(function (error) {
            console.log(error);
        });
    };
    App.prototype.initializeControllers = function (controllers) {
        var _this = this;
        controllers.forEach(function (controller) {
            _this.app.use("/", controller.router);
        });
    };
    App.prototype.initializeErrorHandling = function () {
        this.app.use(function (err, req, res, next) {
            console.log(err.message);
            res.status(500).send(err.message);
        });
    };
    App.prototype.initializeMiddlewares = function () {
        this.app.use(express_1.default.json());
    };
    return App;
}());
exports.App = App;
new App([new game_1.GameController(), new map_1.MapController(), new store_1.StoreController(), new users_1.UserController()], 3000).listen();
//# sourceMappingURL=app.js.map