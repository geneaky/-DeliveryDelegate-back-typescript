"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.UserController = void 0;
var user_service_1 = require("../services/user_service");
var express_1 = require("express");
var UserController = (function () {
    function UserController() {
        this.path = "/user";
        this.router = (0, express_1.Router)();
        this.userService = new user_service_1.UserServiceImpl();
        this.initializeRoutes();
    }
    UserController.prototype.initializeRoutes = function () {
        var _this = this;
        this.router.get('/test', function (req, res, next) {
            console.time("=======test start=======");
            _this.userService.getTestData(req, res, next);
            console.timeEnd("=======test end========");
        });
        this.router.get('/test-redis', function (req, res, next) {
            console.time("========test start=========");
            _this.userService.getTestDataByRedis(req, res, next);
            console.timeEnd("========test end===========");
        });
        this.router.post('/register/existed', function (req, res, next) {
            _this.userService.checkDuplicatePhoneNumber(req, res, next);
        });
        this.router.post('/register', function (req, res, next) {
            _this.userService.registerUser(req, res, next);
        });
        this.router.post('/login', function (req, res, next) {
            _this.userService.login(req, res, next);
        });
        this.router.post('/town', function (req, res, next) {
            _this.userService.setUserTown(req, res, next);
        });
    };
    return UserController;
}());
exports.UserController = UserController;
//# sourceMappingURL=users.js.map