import * as express from 'express'

export interface ReviewService {
    writwReview: (req: express.Request, res: express.Response, next: express.NextFunction) => void,
    recieptAuth: (req: express.Request, res: express.Response, next: express.NextFunction) => void,
    thumbUp: (req: express.Request, res: express.Response, next: express.NextFunction) => void
}