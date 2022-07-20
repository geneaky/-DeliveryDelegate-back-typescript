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
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.StoreServiceImpl = void 0;
const httpError = __importStar(require("http-errors"));
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
exports.StoreServiceImpl = StoreServiceImpl;
