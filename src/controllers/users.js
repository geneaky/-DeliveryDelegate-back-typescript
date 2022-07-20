"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.UserController = void 0;
const express = __importStar(require("express"));
const user_service_1 = require("../services/user_service");
class UserController {
    constructor() {
        this.path = "/user";
        this.router = express.Router();
        this.userService = new user_service_1.UserServiceImpl();
        this.initializeRoutes();
    }
    initializeRoutes() {
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
