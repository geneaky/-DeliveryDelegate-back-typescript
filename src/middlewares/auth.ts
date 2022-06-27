import {Jwt} from "./jwt";
import * as express from 'express';
import * as httpError from 'http-errors'
const TOKEN_EXPIRED: number = -3;
const TOKEN_INVALID: number = -2;

export class Auth {
    private jwt: Jwt = new Jwt();

    authenticate: (req: express.Request, res: express.Response, next: express.NextFunction) => void
    = async (req, res, next) => {
        let jwtToken = req.header('token');

        if(!jwtToken) {
            next(httpError(400, 'UnAuthorized User Request'));
        }

        const user = await new Jwt().verify(jwtToken);

        if(user === TOKEN_EXPIRED) {
            next(httpError(400, 'Authentication Expired!'));
        } else if (user === TOKEN_INVALID) {
            next(httpError(400, 'UnAuthorized User Request'));
        }

        next();
    }
}