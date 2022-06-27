import * as express from 'express'

export interface GameService {
    createGame:(req: express.Request, res: express.Response, next: express.NextFunction) => void,
    findGames: (req: express.Request, res: express.Response, next: express.NextFunction) => void
}