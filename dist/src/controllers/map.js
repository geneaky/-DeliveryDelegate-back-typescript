var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import * as express from 'express';
import axios from 'axios';
import httpError from 'http-errors';
import * as dotenv from 'dotenv';
dotenv.config();
export class MapController {
    constructor() {
        this.path = "/map";
        this.router = express.Router();
        this.naverMap = axios.create({
            baseURL: process.env.SEARCH_URL,
            headers: {
                'X-Naver-Client-Id': process.env.NAVER_CLIENT_ID,
                'X-Naver-Client-Secret': process.env.NAVER_CLIENT_SECRET
            }
        });
        this.initializeRoutes();
    }
    initializeRoutes() {
        this.router.get('/search/place', (req, res, next) => __awaiter(this, void 0, void 0, function* () {
            const place = encodeURI(req.query.name);
            yield this.naverMap.get(`local.json?query=${place}&display=5`)
                .then((result) => {
                return res.json({ result: result.data.items });
            })
                .catch((err) => {
                console.log(err);
                next(httpError(400, 'Bad Request'));
            });
        }));
    }
}
//# sourceMappingURL=map.js.map