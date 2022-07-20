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
const express_1 = __importDefault(require("express"));
const users_1 = require("./controllers/users");
const auth_1 = require("./middlewares/auth");
const data_source_1 = require("./config/data-source");
const dotenv = __importStar(require("dotenv"));
dotenv.config();
class App {
    constructor(controllers, port) {
        this.app = (0, express_1.default)();
        this.port = port;
        this.initializeMiddlewares();
        this.connectToDatabase();
        this.initializeControllers(controllers);
        this.initializeErrorHandling();
    }
    listen() {
        this.app.listen(this.port, () => {
            console.log("server start");
        });
    }
    getServer() {
        return this.app;
    }
    connectToDatabase() {
        data_source_1.AppDataSource.initialize()
            .then(() => {
            console.log('db connected');
        }).catch((error) => {
            console.log(error);
        });
    }
    initializeControllers(controllers) {
        controllers.forEach((controller) => {
            this.app.use("/", new auth_1.Auth().authenticate, controller.router);
        });
    }
    initializeErrorHandling() {
        this.app.use((err, req, res, next) => {
            console.log(err.message);
            res.status(500).send(err.message);
        });
    }
    initializeMiddlewares() {
        this.app.use(express_1.default.json());
    }
}
exports.App = App;
//new App([new GameController(), new MapController(), new StoreController(), new UserController()], 3000).listen();
new App([new users_1.UserController()], 3000).listen();
