import {jwtConfig} from "../config/jwt.config";
import * as jwt from 'jsonwebtoken';
const randToken = require('rand-token');
const TOKEN_EXPIRED: number = -3;
const TOKEN_INVALID: number = -2;

export class Jwt {

    sign: (user: any) => Promise<{ token: void; refreshToken: string }> = async (user: any) => {

        const payload = {
            id : user.user_id,
        };

        const result = {
            token : jwt.sign(payload, jwtConfig.secretKey, jwtConfig.option),
            refreshToken: randToken.uid(256)
        }

        return result;
    }

    verify: (token) => Promise<any> = async (token) => {
        let decoded;
        try {
            decoded = await jwt.verify(token, jwtConfig.secretKey, jwtConfig.option);
        } catch (err) {
            if (err.message === 'jwt expired') {
                console.log('expired token');
                return TOKEN_EXPIRED;
            } else {
                console.log('invalid token');
                return TOKEN_INVALID;
            }
        }

        return decoded;
    }
}