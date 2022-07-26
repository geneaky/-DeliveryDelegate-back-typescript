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
exports.StoreController = void 0;
var express = __importStar(require("express"));
var store_service_1 = require("../services/store_service");
var StoreController = (function () {
    function StoreController() {
        this.path = "/store";
        this.router = express.Router();
        this.storeService = new store_service_1.StoreServiceImpl();
        this.initializeRoutes();
    }
    StoreController.prototype.initializeRoutes = function () {
        var _this = this;
        this.router.get('/', function (req, res, next) {
            _this.storeService.findStore(req, res, next);
        });
        this.router.post('/register', function (req, res, next) {
            _this.storeService.registerStore(req, res, next);
        });
        this.router.get('/:id/reviews', function (req, res, next) {
            _this.storeService.getReviews(req, res, next);
        });
    };
    return StoreController;
}());
exports.StoreController = StoreController;
//# sourceMappingURL=store.js.map