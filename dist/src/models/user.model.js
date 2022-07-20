var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Thumb } from "./thumb.model";
import { Delegator } from "./delegator.model";
import { Review } from "./review.model";
let User = class User {
};
__decorate([
    PrimaryGeneratedColumn(),
    __metadata("design:type", Number)
], User.prototype, "user_id", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], User.prototype, "phone_number", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], User.prototype, "password", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], User.prototype, "nickname", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], User.prototype, "self_posx", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], User.prototype, "self_posy", void 0);
__decorate([
    Column(),
    __metadata("design:type", Number)
], User.prototype, "exemption_count", void 0);
__decorate([
    OneToMany(() => Thumb, (thumb) => thumb.user),
    __metadata("design:type", Array)
], User.prototype, "thumb", void 0);
__decorate([
    OneToMany(() => Delegator, (delegator) => delegator.user),
    __metadata("design:type", Array)
], User.prototype, "delegator", void 0);
__decorate([
    OneToMany(() => Review, (review) => review.user),
    __metadata("design:type", Array)
], User.prototype, "review", void 0);
User = __decorate([
    Entity()
], User);
export { User };
//# sourceMappingURL=user.model.js.map