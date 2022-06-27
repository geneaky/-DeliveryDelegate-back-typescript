import * as express from 'express'

export interface UserService {
    checkDuplicatePhoneNumber: (req: express.Request, res: express.Response, next: express.NextFunction) => void,
    registerUser: (req: express.Request, res: express.Response, next: express.NextFunction) => void,
    login: (req: express.Request, res: express.Response, next: express.NextFunction) => void,
    setUserTown: (req: express.Request, res: express.Response, next: express.NextFunction) => void
}