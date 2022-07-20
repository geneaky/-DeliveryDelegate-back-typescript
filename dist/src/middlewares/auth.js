var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import { Jwt } from "./jwt";
import * as httpError from 'http-errors';
const TOKEN_EXPIRED = -3;
const TOKEN_INVALID = -2;
export class Auth {
    constructor() {
        this.jwt = new Jwt();
        this.authenticate = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            let jwtToken = req.header('token');
            if (!jwtToken) {
                next(httpError(400, 'UnAuthorized User Request'));
            }
            const user = yield new Jwt().verify(jwtToken);
            if (user === TOKEN_EXPIRED) {
                next(httpError(400, 'Authentication Expired!'));
            }
            else if (user === TOKEN_INVALID) {
                next(httpError(400, 'UnAuthorized User Request'));
            }
            next();
        });
    }
}
//# sourceMappingURL=auth.js.map