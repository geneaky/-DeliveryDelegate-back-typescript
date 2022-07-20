import * as express from 'express';
import { UserController } from "./controllers/users";
import { Auth } from "./middlewares/auth";
import { AppDataSource } from "./config/data-source";
import { logger } from "morgan";
import * as dotenv from 'dotenv';
dotenv.config();
export class App {
    constructor(controllers, port) {
        this.app = express();
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
        AppDataSource.initialize()
            .then(() => {
            console.log('db connected');
        }).catch((error) => {
            console.log(error);
        });
    }
    initializeControllers(controllers) {
        controllers.forEach((controller) => {
            this.app.use("/", new Auth().authenticate, controller.router);
        });
    }
    initializeErrorHandling() {
        this.app.use((err, req, res, next) => {
            console.log(err.message);
            res.status(err.status || 500).send(err.message);
        });
    }
    initializeMiddlewares() {
        this.app.use(logger('dev'));
        this.app.use(express.json());
    }
}
//new App([new GameController(), new MapController(), new StoreController(), new UserController()], 3000).listen();
new App([new UserController()], 3000).listen();
//# sourceMappingURL=app.js.map