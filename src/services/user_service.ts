import {UserService} from "./service-type/user.service-type"
import * as httpError from 'http-errors'
import * as crypto from "crypto";
import {AppDataSource} from "../config/data-source";
import {User} from "../models/user.model";
import {Repository} from "typeorm";
const jwt = require('../middlewares/jwt');

export class UserServiceImpl implements UserService {

    userRepository: Repository<User> = AppDataSource.getRepository(User);

    public registerUser = async (req, res, next) => {

        let existedUser = await this.findUser(req, res, next);

        if(existedUser) {
            return res.json({
                message: 'user already existed'
            });
        }

        const user = {
            phone_number: req.body.phone_number,
            password: this.hashPassword(req.body.password),
            nickname: req.body.nickname,
            exemption_count : 0
        }

        await this.userRepository.save(user).then(() => {
            return res.status(200).json({message : 'account created'});
        }).catch((err) => {
            return next(httpError(500, 'Server Error'));
        })
    }

    private hashPassword = (password) => {
        return crypto.createHash('sha256').update(password).digest('base64');
    }

    private findUser = async (req, res, next) => {

        return await this.userRepository.findOneBy({
            phone_number: req.body.phone_number,
            password: this.hashPassword(req.body.password)
        }).catch((err) => {
            return next(err);
        })
    }

    public login = async (req, res, next) => {
        let authenticatedUser = await this.findUser(req, res, next);

        if(authenticatedUser) {
            const jwtToken = await jwt.sign(authenticatedUser);
            return res.status(200).json({
                user: authenticatedUser,
                token: jwtToken
            });
        }

        return next(httpError(400, 'UnAuthorized User Request'));
    }

    public setUserTown = async (req, res, next) => {
        const jwtToken = req.header('token')
        const user = await jwt.verify(jwtToken)

        this.userRepository.update({
            user_id: user.id
        },{
            self_posx: req.body.self_posx,
            self_posy: req.body.self_posy
        }).then((user) => {
            return res.status(200).end()
        }).catch((err) => {
            return next(httpError(500, 'Server Error'))
        })
    }

    public checkDuplicatePhoneNumber = async(req, res, next) => {
        let duplicatedUser: User = await this.userRepository.findOneBy({
            phone_number: req.body.phone_number,
        }).catch((err) => {
            return next(err)
        })

        if(duplicatedUser) {
            return res.json({ message : 'existed'})
        }

        return res.json({ message : 'not existed'})
    }
}
