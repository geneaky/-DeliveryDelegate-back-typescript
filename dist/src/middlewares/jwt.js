var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import { jwtConfig } from "../config/jwt.config";
import * as jwt from 'jsonwebtoken';
const randToken = require('rand-token');
const TOKEN_EXPIRED = -3;
const TOKEN_INVALID = -2;
export class Jwt {
    constructor() {
        this.sign = (user) => __awaiter(this, void 0, void 0, function* () {
            const payload = {
                id: user.user_id,
            };
            const result = {
                token: jwt.sign(payload, jwtConfig.secretKey, jwtConfig.option),
                refreshToken: randToken.uid(256)
            };
            return result;
        });
        this.verify = (token) => __awaiter(this, void 0, void 0, function* () {
            let decoded;
            try {
                decoded = yield jwt.verify(token, jwtConfig.secretKey, jwtConfig.option);
            }
            catch (err) {
                if (err.message === 'jwt expired') {
                    console.log('expired token');
                    return TOKEN_EXPIRED;
                }
                else {
                    console.log('invalid token');
                    return TOKEN_INVALID;
                }
            }
            return decoded;
        });
    }
}
//# sourceMappingURL=jwt.js.map