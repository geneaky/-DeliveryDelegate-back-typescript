import {Controller} from "../utils/base-types";
import * as express from 'express';
import axios, {Axios, AxiosInstance, AxiosRequestConfig, AxiosRequestHeaders} from 'axios';
import httpError from 'http-errors';
import * as dotenv from 'dotenv'

dotenv.config();

export class MapController implements Controller {
    path = "/map"
    router = express.Router()
    naverMap: AxiosInstance

    axiosConfig: AxiosRequestConfig = {
        baseURL : process.env.SEARCH_URL,
        headers : {
            'X-Naver-Client-Id' : process.env.NAVER_CLIENT_ID as string,
            'X-Naver-Client-Secret' : process.env.NAVER_CLIENT_SECRET as string
        }
    }

    constructor() {
        this.naverMap = axios.create(this.axiosConfig);
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