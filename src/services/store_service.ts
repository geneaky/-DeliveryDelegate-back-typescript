import {StoreService} from "./service-type/store.service-type";
import * as httpError from 'http-errors'
import {Repository} from "typeorm";
import {Store} from "../models/store.model";
import {AppDataSource} from "../config/data-source";
import {Review} from "../models/review.model";

export class StoreServiceImpl implements StoreService {

    storeRepository: Repository<Store> = AppDataSource.getRepository(Store)
    reviewRepository: Repository<Review> = AppDataSource.getRepository(Review)

    public findStore = async (req, res, next) => {

        await this.storeRepository.findOneBy({
            store_name: req.query.store_name,
            store_posx: req.query.store_posx,
            store_posy: req.query.store_posy
        }).then((store) => {
            if(store) {
                return res.status(200).json({store_id: store.store_id, message: "store existed"})
            }
            return res.status(404).json({store_id: "null", message: "store not existed"})
        }).catch((err) => {
            next(httpError(500, err.message))
        })
    }

    public registerStore = async (req, res, next) => {
        const store = {
            store_name: req.body.store_name,
            store_posx: req.body.store_posx,
            store_posy: req.body.store_posy,
            store_address: req.body.store_address
        }

        await this.storeRepository.save(store)
            .then((store) => {
                return res.status(200).json({store_id: store.store_id})
            }).catch((err) => {
            next(httpError(500, err.message))
        })
    }

    public getReviews = async (req, res, next) => {
        await this.storeRepository.findOneBy({
            store_id: req.params.id
        }).then((store) => {
            return res.json({reviews: store.review})
        }).catch((err) => {
            next(httpError(500, err.message))
        })
    }
}