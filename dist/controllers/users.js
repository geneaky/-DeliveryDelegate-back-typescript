"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.UserController = void 0;
const user_service_1 = require("../services/user_service");
const express_1 = require("express");
class UserController {
    constructor() {
        this.path = "/user";
        this.router = (0, express_1.Router)();
        this.userService = new user_service_1.UserServiceImpl();
        this.initializeRoutes();
    }
    initializeRoutes() {
        this.router.get('/test', (req, res, next) => {
            this.userService.getTestData(req, res, next);
        });
        this.router.get('/test-redis', (req, res, next) => {
            this.userService.getTestDataByRedis(req, res, next);
        });
        this.router.post('/register/existed', (req, res, next) => {
            this.userService.checkDuplicatePhoneNumber(req, res, next);
        });
        this.router.post('/register', (req, res, next) => {
            this.userService.registerUser(req, res, next);
        });
        this.router.post('/login', (req, res, next) => {
            this.userService.login(req, res, next);
        });
        this.router.post('/town', (req, res, next) => {
            this.userService.setUserTown(req, res, next);
        });
    }
}
exports.UserController = UserController;
//# sourceMappingURL=users.js.map