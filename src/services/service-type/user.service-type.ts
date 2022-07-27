import {Request, Response, NextFunction} from 'express'

export interface UserService {
    checkDuplicatePhoneNumber: (req: Request, res: Response, next: NextFunction) => any,
    registerUser: (req: Request, res: Response, next: NextFunction) => void,
    login: (req: Request, res: Response, next: NextFunction) => void,
    setUserTown: (req: Request, res: Response, next: NextFunction) => void,
    getTestData: (req: Request, res: Response, next: NextFunction) => void,
    getTestDataByRedis: (req: Request, res: Response, next: NextFunction) => void
}