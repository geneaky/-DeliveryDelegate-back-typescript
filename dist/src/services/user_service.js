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
import * as crypto from "crypto";
import { AppDataSource } from "../config/data-source";
import { User } from "../models/user.model";
const jwt = require('../middlewares/jwt');
export class UserServiceImpl {
    constructor() {
        this.userRepository = AppDataSource.getRepository(User);
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
//# sourceMappingURL=user_service.js.map