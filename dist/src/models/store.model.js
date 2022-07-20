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
import { Review } from "./review.model";
let Store = class Store {
};
__decorate([
    PrimaryGeneratedColumn(),
    __metadata("design:type", Number)
], Store.prototype, "store_id", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Store.prototype, "store_name", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Store.prototype, "store_posx", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Store.prototype, "store_posy", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Store.prototype, "store_address", void 0);
__decorate([
    OneToMany(() => Review, (review) => review.store),
    __metadata("design:type", Array)
], Store.prototype, "review", void 0);
Store = __decorate([
    Entity()
], Store);
export { Store };
//# sourceMappingURL=store.model.js.map