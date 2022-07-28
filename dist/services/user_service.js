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
exports.UserServiceImpl = void 0;
var http_errors_1 = __importDefault(require("http-errors"));
var crypto = __importStar(require("crypto"));
var data_source_1 = require("../config/data-source");
var user_model_1 = require("../models/user.model");
var game_model_1 = require("../models/game.model");
var order_model_1 = require("../models/order.model");
var store_model_1 = require("../models/store.model");
var review_model_1 = require("../models/review.model");
var delegator_model_1 = require("../models/delegator.model");
var jwt = require('../middlewares/jwt');
var UserServiceImpl = (function () {
    function UserServiceImpl() {
        var _this = this;
        this.userRepository = data_source_1.AppDataSource.getRepository(user_model_1.User);
        this.gameRepository = data_source_1.AppDataSource.getRepository(game_model_1.Game);
        this.delegatorRepository = data_source_1.AppDataSource.getRepository(delegator_model_1.Delegator);
        this.orderRepository = data_source_1.AppDataSource.getRepository(order_model_1.Order);
        this.storeRepository = data_source_1.AppDataSource.getRepository(store_model_1.Store);
        this.reviewRepository = data_source_1.AppDataSource.getRepository(review_model_1.Review);
        this.registerUser = function (req, res, next) { return __awaiter(_this, void 0, void 0, function () {
            var existedUser, user;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4, this.findUser(req, res, next)];
                    case 1:
                        existedUser = _a.sent();
                        if (existedUser) {
                            return [2, res.json({
                                    message: 'user already existed'
                                })];
                        }
                        user = {
                            phone_number: req.body.phone_number,
                            password: this.hashPassword(req.body.password),
                            nickname: req.body.nickname,
                            exemption_count: 0
                        };
                        return [4, this.userRepository.save(user).then(function () {
                                return res.status(200).json({ message: 'account created' });
                            }).catch(function (err) {
                                return next((0, http_errors_1.default)(500, 'Server Error'));
                            })];
                    case 2:
                        _a.sent();
                        return [2];
                }
            });
        }); };
        this.hashPassword = function (password) {
            return crypto.createHash('sha256').update(password).digest('base64');
        };
        this.findUser = function (req, res, next) { return __awaiter(_this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4, this.userRepository.findOneBy({
                            phone_number: req.body.phone_number,
                            password: this.hashPassword(req.body.password)
                        }).catch(function (err) {
                            return next(err);
                        })];
                    case 1: return [2, _a.sent()];
                }
            });
        }); };
        this.login = function (req, res, next) { return __awaiter(_this, void 0, void 0, function () {
            var authenticatedUser, jwtToken;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4, this.findUser(req, res, next)];
                    case 1:
                        authenticatedUser = _a.sent();
                        if (!authenticatedUser) return [3, 3];
                        return [4, jwt.sign(authenticatedUser)];
                    case 2:
                        jwtToken = _a.sent();
                        return [2, res.status(200).json({
                                user: authenticatedUser,
                                token: jwtToken
                            })];
                    case 3: return [2, next((0, http_errors_1.default)(400, 'UnAuthorized User Request'))];
                }
            });
        }); };
        this.setUserTown = function (req, res, next) { return __awaiter(_this, void 0, void 0, function () {
            var jwtToken, user;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        jwtToken = req.header('token');
                        return [4, jwt.verify(jwtToken)];
                    case 1:
                        user = _a.sent();
                        this.userRepository.update({
                            user_id: user.id
                        }, {
                            self_posx: req.body.self_posx,
                            self_posy: req.body.self_posy
                        }).then(function (user) {
                            return res.status(200).end();
                        }).catch(function (err) {
                            return next((0, http_errors_1.default)(500, 'Server Error'));
                        });
                        return [2];
                }
            });
        }); };
        this.checkDuplicatePhoneNumber = function (req, res, next) { return __awaiter(_this, void 0, void 0, function () {
            var duplicatedUser;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4, this.userRepository.findOneBy({
                            phone_number: req.body.phone_number,
                        }).catch(function (err) {
                            return next(err);
                        })];
                    case 1:
                        duplicatedUser = _a.sent();
                        if (duplicatedUser) {
                            return [2, res.json({ message: 'existed' })];
                        }
                        return [2, res.json({ message: 'not existed' })];
                }
            });
        }); };
        this.getTestData = function (req, res, next) { return __awaiter(_this, void 0, void 0, function () {
            var findUser, delegator, order, store_name, store;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4, this.userRepository.findOneBy({
                            user_id: 1
                        }).catch(function (err) { return console.log(err); })];
                    case 1:
                        findUser = _a.sent();
                        return [4, this.delegatorRepository.findOneBy({
                                delegator_id: 1
                            }).catch(function (err) { return console.log(err); })];
                    case 2:
                        delegator = _a.sent();
                        return [4, this.orderRepository.findOneBy({
                                delegator: delegator
                            }).catch(function (err) { return console.log(err); })];
                    case 3:
                        order = _a.sent();
                        if (order) {
                            store_name = order.store_name;
                        }
                        return [4, this.storeRepository.findOneBy({
                                store_name: store_name
                            }).catch(function (err) { return console.log(err); })];
                    case 4:
                        store = _a.sent();
                        return [2, res.json({ result: store })];
                }
            });
        }); };
    }
    UserServiceImpl.prototype.getTestDataByRedis = function (req, res, next) {
        throw new Error("Method not implemented.");
    };
    return UserServiceImpl;
}());
exports.UserServiceImpl = UserServiceImpl;
//# sourceMappingURL=user_service.js.map