var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import * as httpError from 'http-errors';
import { Store } from "../models/store.model";
import { AppDataSource } from "../config/data-source";
import { Review } from "../models/review.model";
export class StoreServiceImpl {
    constructor() {
        this.storeRepository = AppDataSource.getRepository(Store);
        this.reviewRepository = AppDataSource.getRepository(Review);
        this.findStore = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            yield this.storeRepository.findOneBy({
                store_name: req.query.store_name,
                store_posx: req.query.store_posx,
                store_posy: req.query.store_posy
            }).then((store) => {
                if (store) {
                    return res.status(200).json({ store_id: store.store_id, message: "store existed" });
                }
                return res.status(404).json({ store_id: "null", message: "store not existed" });
            }).catch((err) => {
                next(httpError(500, err.message));
            });
        });
        this.registerStore = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            const store = {
                store_name: req.body.store_name,
                store_posx: req.body.store_posx,
                store_posy: req.body.store_posy,
                store_address: req.body.store_address
            };
            yield this.storeRepository.save(store)
                .then((store) => {
                return res.status(200).json({ store_id: store.store_id });
            }).catch((err) => {
                next(httpError(500, err.message));
            });
        });
        this.getReviews = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            yield this.storeRepository.findOneBy({
                store_id: req.params.id
            }).then((store) => {
                return res.json({ reviews: store.review });
            }).catch((err) => {
                next(httpError(500, err.message));
            });
        });
    }
}
//# sourceMappingURL=store_service.js.map