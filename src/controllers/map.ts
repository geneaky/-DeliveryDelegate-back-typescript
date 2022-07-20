import {Controller} from "../utils/base-types";
import * as express from 'express';
import axios, {Axios} from 'axios';
import httpError from 'http-errors';
import * as dotenv from 'dotenv'

dotenv.config();

export class MapController implements Controller {
    path = "/map"
    router = express.Router()
    naverMap: Axios

    constructor() {
        this.naverMap = axios.create({
            baseURL : process.env.SEARCH_URL,
            headers : {
                'X-Naver-Client-Id' : process.env.NAVER_CLIENT_ID,
                'X-Naver-Client-Secret' : process.env.NAVER_CLIENT_SECRET
            }
        })
        this.initializeRoutes();
    }

    private initializeRoutes() {
        this.router.get('/search/place', async(req, res, next) => {
            const place = encodeURI(req.query.name as string)
            await this.naverMap.get(`local.json?query=${place}&display=5`)
                .then((result) => {
                    return res.json({result : result.data.items})
                })
                .catch((err) => {
                    console.log(err)
                    next(httpError(400, 'Bad Request'))
                })
        })
    }
}