import {Controller} from "../utils/base-types"
import * as express from 'express'
import {StoreService} from "../services/service-type/store.service-type";
import {StoreServiceImpl} from "../services/store_service";

export class StoreController implements Controller {
    path: string = "/store";
    router: express.Router = express.Router();
    private storeService: StoreService = new StoreServiceImpl();

    constructor() {
        this.initializeRoutes();
    }


    private initializeRoutes() {
        this.router.get('/',(req,res,next) => {
            this.storeService.findStore(req, res, next);
        });

        this.router.post('/register', (req, res, next) => {
            this.storeService.registerStore(req, res, next);
        });

        this.router.get('/:id/reviews', (req, res, next) => {
            this.storeService.getReviews(req, res, next);
        })
    }
}