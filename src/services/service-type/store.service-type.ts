import * as express from 'express'

export interface StoreService {

    findStore: (req: express.Request, res: express.Response, next: express.NextFunction) => void,
    registerStore: (req: express.Request, res: express.Response, next: express.NextFunction) => void,
    getReviews: (req: express.Request, res: express.Response, next: express.NextFunction) => void
}