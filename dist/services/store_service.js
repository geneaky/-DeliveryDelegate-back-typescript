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
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.StoreServiceImpl = void 0;
var http_errors_1 = __importDefault(require("http-errors"));
var store_model_1 = require("../models/store.model");
var data_source_1 = require("../config/data-source");
var review_model_1 = require("../models/review.model");
var StoreServiceImpl = (function () {
    function StoreServiceImpl() {
        var _this = this;
        this.storeRepository = data_source_1.AppDataSource.getRepository(store_model_1.Store);
        this.reviewRepository = data_source_1.AppDataSource.getRepository(review_model_1.Review);
        this.findStore = function (req, res, next) { return __awaiter(_this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4, this.storeRepository.findOneBy({
                            store_name: req.query.store_name,
                            store_posx: req.query.store_posx,
                            store_posy: req.query.store_posy
                        }).then(function (store) {
                            if (store) {
                                return res.status(200).json({ store_id: store.store_id, message: "store existed" });
                            }
                            return res.status(404).json({ store_id: "null", message: "store not existed" });
                        }).catch(function (err) {
                            next((0, http_errors_1.default)(500, err.message));
                        })];
                    case 1:
                        _a.sent();
                        return [2];
                }
            });
        }); };
        this.registerStore = function (req, res, next) { return __awaiter(_this, void 0, void 0, function () {
            var store;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        store = {
                            store_name: req.body.store_name,
                            store_posx: req.body.store_posx,
                            store_posy: req.body.store_posy,
                            store_address: req.body.store_address
                        };
                        return [4, this.storeRepository.save(store)
                                .then(function (store) {
                                return res.status(200).json({ store_id: store.store_id });
                            }).catch(function (err) {
                                next((0, http_errors_1.default)(500, err.message));
                            })];
                    case 1:
                        _a.sent();
                        return [2];
                }
            });
        }); };
        this.getReviews = function (req, res, next) { return __awaiter(_this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4, this.storeRepository.findOneBy({
                            store_id: parseInt(req.params.id)
                        }).then(function (store) {
                            return res.json({ reviews: store.review });
                        }).catch(function (err) {
                            next((0, http_errors_1.default)(500, err.message));
                        })];
                    case 1:
                        _a.sent();
                        return [2];
                }
            });
        }); };
    }
    return StoreServiceImpl;
}());
exports.StoreServiceImpl = StoreServiceImpl;
//# sourceMappingURL=store_service.js.map