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
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.UserServiceImpl = void 0;
const http_errors_1 = __importDefault(require("http-errors"));
const crypto = __importStar(require("crypto"));
const data_source_1 = require("../config/data-source");
const user_model_1 = require("../models/user.model");
const game_model_1 = require("../models/game.model");
const order_model_1 = require("../models/order.model");
const store_model_1 = require("../models/store.model");
const review_model_1 = require("../models/review.model");
const delegator_model_1 = require("../models/delegator.model");
const redis_1 = require("redis");
const jwt = require('../middlewares/jwt');
class UserServiceImpl {
    constructor() {
        this.userRepository = data_source_1.AppDataSource.getRepository(user_model_1.User);
        this.gameRepository = data_source_1.AppDataSource.getRepository(game_model_1.Game);
        this.delegatorRepository = data_source_1.AppDataSource.getRepository(delegator_model_1.Delegator);
        this.orderRepository = data_source_1.AppDataSource.getRepository(order_model_1.Order);
        this.storeRepository = data_source_1.AppDataSource.getRepository(store_model_1.Store);
        this.reviewRepository = data_source_1.AppDataSource.getRepository(review_model_1.Review);
        this.redisClient = (0, redis_1.createClient)({ url: 'redis://localhost:6379' });
        this.registerUser = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            let existedUser = yield this.findUser(req, res, next);
            if (existedUser) {
                return res.json({
                    message: 'user already existed'
                });
            }
            const user = {
                phone_number: req.body.phone_number,
                password: this.hashPassword(req.body.password),
                nickname: req.body.nickname,
                exemption_count: 0
            };
            yield this.userRepository.save(user).then(() => {
                return res.status(200).json({ message: 'account created' });
            }).catch((err) => {
                return next((0, http_errors_1.default)(500, 'Server Error'));
            });
        });
        this.hashPassword = (password) => {
            return crypto.createHash('sha256').update(password).digest('base64');
        };
        this.findUser = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            return yield this.userRepository.findOneBy({
                phone_number: req.body.phone_number,
                password: this.hashPassword(req.body.password)
            }).catch((err) => {
                return next(err);
            });
        });
        this.login = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            let authenticatedUser = yield this.findUser(req, res, next);
            if (authenticatedUser) {
                const jwtToken = yield jwt.sign(authenticatedUser);
                return res.status(200).json({
                    user: authenticatedUser,
                    token: jwtToken
                });
            }
            return next((0, http_errors_1.default)(400, 'UnAuthorized User Request'));
        });
        this.setUserTown = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            const jwtToken = req.header('token');
            const user = yield jwt.verify(jwtToken);
            this.userRepository.update({
                user_id: user.id
            }, {
                self_posx: req.body.self_posx,
                self_posy: req.body.self_posy
            }).then((user) => {
                return res.status(200).end();
            }).catch((err) => {
                return next((0, http_errors_1.default)(500, 'Server Error'));
            });
        });
        this.checkDuplicatePhoneNumber = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            let duplicatedUser = yield this.userRepository.findOneBy({
                phone_number: req.body.phone_number,
            }).catch((err) => {
                return next(err);
            });
            if (duplicatedUser) {
                return res.json({ message: 'existed' });
            }
            return res.json({ message: 'not existed' });
        });
        this.getTestData = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            let findUser = yield this.userRepository.findOneBy({
                user_id: 1
            }).catch((err) => console.log(err));
            let delegator = yield this.delegatorRepository.findOneBy({
                delegator_id: 1
            }).catch((err) => console.log(err));
            let order = yield this.orderRepository.findOneBy({
                delegator: delegator
            }).catch((err) => console.log(err));
            let store_name;
            if (order) {
                store_name = order.store_name;
            }
            let store = yield this.storeRepository.findOneBy({
                store_name: store_name
            }).catch((err) => console.log(err));
            yield this.redisClient.connect();
            yield this.redisClient.set("store", JSON.stringify(store)).catch((err) => { console.log(err); }).then(() => {
                this.redisClient.quit();
            });
            return res.json({ result: store });
        });
        this.getTestDataByRedis = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            yield this.redisClient.connect();
            let value = yield this.redisClient.get("store").then((result) => {
                this.redisClient.quit();
                return result;
            });
            let store = JSON.parse(value);
            return res.json({ result: store });
        });
    }
}
exports.UserServiceImpl = UserServiceImpl;
//# sourceMappingURL=user_service.js.map