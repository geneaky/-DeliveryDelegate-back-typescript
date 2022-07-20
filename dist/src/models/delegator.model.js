var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
import { Column, Entity, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { JoinColumn } from "typeorm/browser";
import { User } from "./user.model";
import { Game } from "./game.model";
import { Order } from "./order.model";
let Delegator = class Delegator {
};
__decorate([
    PrimaryGeneratedColumn(),
    __metadata("design:type", Number)
], Delegator.prototype, "delegator_id", void 0);
__decorate([
    Column(),
    __metadata("design:type", Number)
], Delegator.prototype, "ranking", void 0);
__decorate([
    ManyToOne(() => User, (user) => user.delegator),
    JoinColumn(),
    __metadata("design:type", User)
], Delegator.prototype, "user", void 0);
__decorate([
    ManyToOne(() => Game, (game) => game.delegator),
    JoinColumn(),
    __metadata("design:type", Game)
], Delegator.prototype, "game", void 0);
__decorate([
    OneToMany(() => Order, (order) => order.delegator),
    __metadata("design:type", Array)
], Delegator.prototype, "order", void 0);
Delegator = __decorate([
    Entity()
], Delegator);
export { Delegator };
//# sourceMappingURL=delegator.model.js.map