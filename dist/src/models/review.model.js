var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
import { Column, Entity, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Reciept } from "./reciept.model";
import { Thumb } from "./thumb.model";
import { Store } from "./store.model";
import { User } from "./user.model";
let Review = class Review {
};
__decorate([
    PrimaryGeneratedColumn(),
    __metadata("design:type", Number)
], Review.prototype, "review_id", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Review.prototype, "content", void 0);
__decorate([
    ManyToOne(() => Store, (store) => store.review),
    JoinColumn(),
    __metadata("design:type", Store)
], Review.prototype, "store", void 0);
__decorate([
    ManyToOne(() => User, (user) => user.review),
    JoinColumn(),
    __metadata("design:type", User)
], Review.prototype, "user", void 0);
__decorate([
    OneToMany(() => Reciept, (recciept) => recciept.review),
    __metadata("design:type", Array)
], Review.prototype, "reciept", void 0);
__decorate([
    OneToMany(() => Thumb, (thumb) => thumb.review),
    __metadata("design:type", Array)
], Review.prototype, "thumb", void 0);
Review = __decorate([
    Entity()
], Review);
export { Review };
//# sourceMappingURL=review.model.js.map