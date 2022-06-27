import {Express} from "express";
import * as sequelize from "sequelize";
import * as express from 'express';
import {Controller} from "./utils/base-types";
import {GameController} from "./controllers/game";
const logger = require('morgan');
const dotenv = require('dotenv');
const authenticate = require('./middlewares/auth');
const {sequelize1} = require('./models');
const usersRouter = require('./controllers/users');
const reviewRouter = require('./controllers/review');
const storeRouter = require('./controllers/store');
const mapRouter = require('./controllers/map');
const fs = require('fs');


dotenv.config();

export class App {
    public app: express.Application
    public port: number

    constructor(controllers: Controller[], port: number) {
        this.app = express()
        this.port = port

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


}

const app: Express = express();
const sequelize: Sequelize = sequelize1;

sequelize.sync({force:false})
    .then(() => {
        console.log('success connecting database');
    })
    .catch((err) => {
        console.log('fail connecting database > ',err);
    });


app.use(express.static('public'));
app.use(logger('dev'));
app.use(express.json());

app.use('/users', usersRouter);
app.use('/store',authenticate, storeRouter);
app.use('/review',authenticate, reviewRouter);
app.use('/map',authenticate, mapRouter);


app.use((err, req, res, next) => {
    console.log(err.message);
    res.status(err.status|| 500).send(err.message);
});

new App([new GameController()], 3000);