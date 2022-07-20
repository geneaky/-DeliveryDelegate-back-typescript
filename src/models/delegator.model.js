"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
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
    (0, typeorm_1.PrimaryGeneratedColumn)()
], Delegator.prototype, "delegator_id", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Delegator.prototype, "ranking", void 0);
__decorate([
    (0, typeorm_1.ManyToOne)(() => user_model_1.User, (user) => user.delegator),
    (0, browser_1.JoinColumn)()
], Delegator.prototype, "user", void 0);
__decorate([
    (0, typeorm_1.ManyToOne)(() => game_model_1.Game, (game) => game.delegator),
    (0, browser_1.JoinColumn)()
], Delegator.prototype, "game", void 0);
__decorate([
    (0, typeorm_1.OneToMany)(() => order_model_1.Order, (order) => order.delegator)
], Delegator.prototype, "order", void 0);
Delegator = __decorate([
    (0, typeorm_1.Entity)()
], Delegator);
exports.Delegator = Delegator;
