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
var typeorm_1 = require("typeorm");
var user_model_1 = require("./user.model");
var game_model_1 = require("./game.model");
var order_model_1 = require("./order.model");
var Delegator = (function () {
    function Delegator() {
    }
    __decorate([
        (0, typeorm_1.PrimaryGeneratedColumn)(),
        __metadata("design:type", Number)
    ], Delegator.prototype, "delegator_id", void 0);
    __decorate([
        (0, typeorm_1.Column)(),
        __metadata("design:type", Number)
    ], Delegator.prototype, "ranking", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return user_model_1.User; }, function (user) { return user.delegator; }),
        (0, typeorm_1.JoinColumn)(),
        __metadata("design:type", user_model_1.User)
    ], Delegator.prototype, "user", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return game_model_1.Game; }, function (game) { return game.delegator; }),
        (0, typeorm_1.JoinColumn)(),
        __metadata("design:type", game_model_1.Game)
    ], Delegator.prototype, "game", void 0);
    __decorate([
        (0, typeorm_1.OneToMany)(function () { return order_model_1.Order; }, function (order) { return order.delegator; }),
        __metadata("design:type", Array)
    ], Delegator.prototype, "order", void 0);
    Delegator = __decorate([
        (0, typeorm_1.Entity)()
    ], Delegator);
    return Delegator;
}());
exports.Delegator = Delegator;
//# sourceMappingURL=delegator.model.js.map