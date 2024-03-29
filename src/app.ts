import express, {Express, NextFunction, Request, Response} from 'express';
import {Controller} from "./utils/base-types";
import {GameController} from "./controllers/game";
import {MapController} from "./controllers/map";
import {StoreController} from "./controllers/store";
import {UserController} from "./controllers/users";
import {Auth} from "./middlewares/auth";
import {AppDataSource} from "./config/data-source";
import * as dotenv from 'dotenv'
import {createClient, RedisClientType} from "redis";
import {RedisSource} from "./config/redis-source";


dotenv.config();

export class App {
    public app : Express;
    public port: number
    public redisClient: RedisClientType = createClient({ url:'redis://localhost:6379'});


    constructor(controllers: Controller[], port: number) {
        this.app = express();
        this.port = port

        this.initializeMiddlewares();
        this.connectToDatabase();
        this.connectToRedis();
        this.initializeControllers(controllers)
        this.initializeErrorHandling()
    }

    public listen() {
        this.app.listen(this.port, () => {
            console.log("server start")
        })
    }

    public getServer() {
        return this.app
    }


    private connectToDatabase() {
        AppDataSource.initialize()
            .then(() => {
                console.log('db connected')
            }).catch((error) => {
            console.log(error)
        })
    }

    private connectToRedis() {
        RedisSource.connect()
    }

    private initializeControllers(controllers: Controller[]) {
        controllers.forEach((controller) => {
            this.app.use("/", controller.router)
        })
    }

    private initializeErrorHandling() {
        this.app.use((err: Error, req: Request, res: Response, next: NextFunction) => {
            console.log(err.message)
            res.status(500).send(err.message)
    })}


    private initializeMiddlewares() {
        this.app.use(express.json());
    }
}

new App([new GameController(), new MapController(), new StoreController(), new UserController()], 3000).listen();