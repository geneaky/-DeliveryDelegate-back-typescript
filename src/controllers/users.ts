import {Controller} from "../utils/base-types";
import * as express from 'express'
import {UserService} from "../services/service-type/user.service-type";
import {UserServiceImpl} from "../services/user_service";
const authenticate = require('../middlewares/auth')

export class UserController implements Controller{
  public path: string = "/user"
  public router: express.Router = express.Router()
  private userService: UserService = new UserServiceImpl()

  constructor() {
    this.initializeRoutes()
  }

  private initializeRoutes() {
    router.post('/register/existed', (req, res, next) => {
      this.userService.checkDuplicatePhoneNumber(req, res, next)
    })

    router.post('/register', (req, res,next) => {
      this.userService.registerUser(req, res, next)
    })

    router.post('/login', (req, res, next) => {
      this.userService.login(req, res, next)
    })

    router.post('/town', authenticate ,(req, res, next) => {
      this.userService.setUserTown(req, res, next)
    })

  }
}