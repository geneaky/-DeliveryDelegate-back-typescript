import * as express from 'express';
import {Controller} from "./utils/base-types";
import {GameController} from "./controllers/game";
import {Sequelize} from "sequelize";
import {MapController} from "./controllers/map";
import {StoreController} from "./controllers/store";
import {UserController} from "./controllers/users";
import {ReviewController} from "./controllers/review";
const logger = require('morgan');
const dotenv = require('dotenv');
const {sequelize} = require('./models');
const usersRouter = require('./controllers/users');
const reviewRouter = require('./controllers/review');
const storeRouter = require('./controllers/store');
const mapRouter = require('./controllers/map');


dotenv.config();

export class App {
    public app: express.Application
    public port: number
    private sequelize: Sequelize = sequelize

    constructor(controllers: Controller[], port: number) {
        this.app = express()
        this.port = port

        this.initializeMiddlewares();
        this.connectToDatabase();
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

        this.sequelize.sync({force:false})
            .then(() => {
                console.log('success connecting database')
            })
            .catch((err) => {
                console.log('fail connecting database > ',err)
            })
    }

    private initializeControllers(controllers: Controller[]) {
        controllers.forEach((controller) => {
            this.app.use("/", controller.router)
        })
    }

    private initializeErrorHandling() {
        this.app.use((err, req, res, next) => {
            console.log(err.message)
            res.status(err.status|| 500).send(err.message)
    })}


    private initializeMiddlewares() {
        this.app.use(logger('dev'));
        this.app.use(express.json());
    }
}

// app.use('/users', usersRouter);
// app.use('/store',authenticate, storeRouter);
// app.use('/review',authenticate, reviewRouter);
// app.use('/map',authenticate, mapRouter);


new App([new GameController(), new MapController(), new StoreController(), new UserController(), new ReviewController()], 3000);