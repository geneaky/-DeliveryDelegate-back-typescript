import * as express from 'express';
import { StoreServiceImpl } from "../services/store_service";
export class StoreController {
    constructor() {
        this.path = "/store";
        this.router = express.Router();
        this.storeService = new StoreServiceImpl();
        this.initializeRoutes();
    }
    initializeRoutes() {
        this.router.get('/', (req, res, next) => {
            this.storeService.findStore(req, res, next);
        });
        this.router.post('/register', (req, res, next) => {
            this.storeService.registerStore(req, res, next);
        });
        this.router.get('/:id/reviews', (req, res, next) => {
            this.storeService.getReviews(req, res, next);
        });
    }
}
//# sourceMappingURL=store.js.map