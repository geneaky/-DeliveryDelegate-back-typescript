import {Controller} from "../utils/base-types";
import {UserService} from "../services/service-type/user.service-type";
import {UserServiceImpl} from "../services/user_service";
import { Router } from "express";

export class UserController implements Controller{
  public path: string = "/user"
  public router: Router = Router()
  private userService: UserService = new UserServiceImpl()

  constructor() {
    this.initializeRoutes()
  }

  private initializeRoutes() {

    this.router.get('/test',(req, res, next) => {
      this.userService.getTestData(req, res, next)
    })

    this.router.get('/test-redis',(req, res, next) => {
      this.userService.getTestDataByRedis(req, res, next)
    })

    this.router.post('/register/existed', (req, res, next) => {
      this.userService.checkDuplicatePhoneNumber(req, res, next)
    })

    this.router.post('/register', (req, res,next) => {
      this.userService.registerUser(req, res, next)
    })

    this.router.post('/login', (req, res, next) => {
      this.userService.login(req, res, next)
    })

    this.router.post('/town',(req, res, next) => {
      this.userService.setUserTown(req, res, next)
    })

  }
}