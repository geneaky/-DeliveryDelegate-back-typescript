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
exports.UserServiceImpl = void 0;
const httpError = __importStar(require("http-errors"));
const crypto = __importStar(require("crypto"));
const data_source_1 = require("../config/data-source");
const user_model_1 = require("../models/user.model");
const jwt = require('../middlewares/jwt');
class UserServiceImpl {
    constructor() {
        this.userRepository = data_source_1.AppDataSource.getRepository(user_model_1.User);
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
                return next(httpError(500, 'Server Error'));
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
            return next(httpError(400, 'UnAuthorized User Request'));
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
                return next(httpError(500, 'Server Error'));
            });
        });
        this.checkDuplicatePhoneNumber = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            let duplicatedUser = this.userRepository.findOneBy({
                phone_number: req.body.phone_number,
            }).catch((err) => {
                return next(err);
            });
            if (duplicatedUser) {
                return res.json({ message: 'existed' });
            }
            return res.json({ message: 'not existed' });
        });
    }
}
exports.UserServiceImpl = UserServiceImpl;
