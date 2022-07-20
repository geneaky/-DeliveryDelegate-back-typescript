"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Order = void 0;
const typeorm_1 = require("typeorm");
const delegator_model_1 = require("./delegator.model");
let Order = class Order {
};
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)()
], Order.prototype, "order_id", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Order.prototype, "store_name", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Order.prototype, "mapx", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Order.prototype, "mapy", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Order.prototype, "detail", void 0);
__decorate([
    (0, typeorm_1.ManyToOne)(() => delegator_model_1.Delegator, (delegator) => delegator.order),
    (0, typeorm_1.JoinColumn)()
], Order.prototype, "delegator", void 0);
Order = __decorate([
    (0, typeorm_1.Entity)()
], Order);
exports.Order = Order;
