"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.StoreServiceImpl = void 0;
const http_errors_1 = __importDefault(require("http-errors"));
const store_model_1 = require("../models/store.model");
const data_source_1 = require("../config/data-source");
const review_model_1 = require("../models/review.model");
class StoreServiceImpl {
    constructor() {
        this.storeRepository = data_source_1.AppDataSource.getRepository(store_model_1.Store);
        this.reviewRepository = data_source_1.AppDataSource.getRepository(review_model_1.Review);
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
                next((0, http_errors_1.default)(500, err.message));
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
                next((0, http_errors_1.default)(500, err.message));
            });
        });
        this.getReviews = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            yield this.storeRepository.findOneBy({
                store_id: parseInt(req.params.id)
            }).then((store) => {
                return res.json({ reviews: store.review });
            }).catch((err) => {
                next((0, http_errors_1.default)(500, err.message));
            });
        });
    }
}
exports.StoreServiceImpl = StoreServiceImpl;
//# sourceMappingURL=store_service.js.map