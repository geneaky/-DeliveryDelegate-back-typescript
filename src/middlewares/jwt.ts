import {jwtConfig} from "../config/jwt.config";
import * as jwt from 'jsonwebtoken';
const randToken = require('rand-token');
const TOKEN_EXPIRED: number = -3;
const TOKEN_INVALID: number = -2;

const sign = async (user) => {

    const payload = {
        id : user.user_id,
    };

    const result = {
        token : jwt.sign(payload, jwtConfig.secretKey, jwtConfig.option),
        refreshToken: randToken.uid(256)
    }

    return result;
}

const verify = async (token) => {
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

module.exports = {sign, verify}