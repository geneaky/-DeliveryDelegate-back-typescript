"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Delegator = void 0;
const typeorm_1 = require("typeorm");
const browser_1 = require("typeorm/browser");
const user_model_1 = require("./user.model");
const game_model_1 = require("./game.model");
const order_model_1 = require("./order.model");
let Delegator = class Delegator {
};
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)(),
    __metadata("design:type", Number)
], Delegator.prototype, "delegator_id", void 0);
__decorate([
    (0, typeorm_1.Column)(),
    __metadata("design:type", Number)
], Delegator.prototype, "ranking", void 0);
__decorate([
    (0, typeorm_1.ManyToOne)(() => user_model_1.User, (user) => user.delegator),
    (0, browser_1.JoinColumn)(),
    __metadata("design:type", user_model_1.User)
], Delegator.prototype, "user", void 0);
__decorate([
    (0, typeorm_1.ManyToOne)(() => game_model_1.Game, (game) => game.delegator),
    (0, browser_1.JoinColumn)(),
    __metadata("design:type", game_model_1.Game)
], Delegator.prototype, "game", void 0);
__decorate([
    (0, typeorm_1.OneToMany)(() => order_model_1.Order, (order) => order.delegator),
    __metadata("design:type", Array)
], Delegator.prototype, "order", void 0);
Delegator = __decorate([
    (0, typeorm_1.Entity)()
], Delegator);
exports.Delegator = Delegator;
