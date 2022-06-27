import {UserService} from "./service-type/user.service-type"
import * as httpError from 'http-errors'
import * as crypto from "crypto";
const jwt = require('../middlewares/jwt');
const {User} = require('../models');

export class UserServiceImpl implements UserService {
    registerUser = async (req, res, next) => {

        let existedUser = await this.findUser(req, res, next);

        if(existedUser) {
            return res.json({
                message: 'user already existed'
            });
        }

        await User.create({
            phone_number: req.body.phone_number,
            password: this.hashPassword(req.body.password),
            nickname: req.body.nickname,
            exemption_count : 0

        }).then(() => {
            return res.status(200).json({message : 'account created'});
        }).catch((err) => {
            return next(httpError(500, 'Server Error'));
        });
    }

    private hashPassword = (password) => {
        return crypto.createHash('sha256').update(password).digest('base64');
    }

    private findUser = async (req, res, next) => {
        return await User.findOne({
            where: {
                phone_number: req.body.phone_number,
                password: this.hashPassword(req.body.password)}
        }).catch((err) => {
            return next(err);
        });
    }

    login = async (req, res, next) => {
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

    setUserTown = async (req, res, next) => {
        const jwtToken = req.header('token');
        const user = await jwt.verify(jwtToken);

        await User.update({
            self_posx: req.body.self_posx,
            self_posy: req.body.self_posy
        },{
            where:{
                user_id : user.id
            }
        }).then((user) => {
            return res.status(200).end();
        }).catch((err) => {
            return next(httpError(500, 'Server Error'));
        });
    }

    checkDuplicatePhoneNumber = async(req, res, next) => {
        let duplicatedUser = await User.findOne({
            where: {
                phone_number: req.body.phone_number,
            }
        }).catch((err) => {
            return next(err);
        });

        if(duplicatedUser) {
            return res.json({ message : 'existed'})
        }

        return res.json({ message : 'not existed'})
    }
}
