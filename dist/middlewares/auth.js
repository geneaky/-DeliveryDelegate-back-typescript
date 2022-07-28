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
exports.Auth = void 0;
const jwt_1 = require("./jwt");
const http_errors_1 = __importDefault(require("http-errors"));
const TOKEN_EXPIRED = -3;
const TOKEN_INVALID = -2;
class Auth {
    constructor() {
        this.jwt = new jwt_1.Jwt();
        this.authenticate = (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            let jwtToken = req.header('token');
            if (!jwtToken) {
                next((0, http_errors_1.default)(400, 'UnAuthorized User Request'));
            }
            const user = yield new jwt_1.Jwt().verify(jwtToken);
            if (user === TOKEN_EXPIRED) {
                next((0, http_errors_1.default)(400, 'Authentication Expired!'));
            }
            else if (user === TOKEN_INVALID) {
                next((0, http_errors_1.default)(400, 'UnAuthorized User Request'));
            }
            next();
        });
    }
}
exports.Auth = Auth;
//# sourceMappingURL=auth.js.map