"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Review = void 0;
const typeorm_1 = require("typeorm");
const reciept_model_1 = require("./reciept.model");
const thumb_model_1 = require("./thumb.model");
const store_model_1 = require("./store.model");
const user_model_1 = require("./user.model");
let Review = class Review {
};
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)()
], Review.prototype, "review_id", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Review.prototype, "content", void 0);
__decorate([
    (0, typeorm_1.ManyToOne)(() => store_model_1.Store, (store) => store.review),
    (0, typeorm_1.JoinColumn)()
], Review.prototype, "store", void 0);
__decorate([
    (0, typeorm_1.ManyToOne)(() => user_model_1.User, (user) => user.review),
    (0, typeorm_1.JoinColumn)()
], Review.prototype, "user", void 0);
__decorate([
    (0, typeorm_1.OneToMany)(() => reciept_model_1.Reciept, (recciept) => recciept.review)
], Review.prototype, "reciept", void 0);
__decorate([
    (0, typeorm_1.OneToMany)(() => thumb_model_1.Thumb, (thumb) => thumb.review)
], Review.prototype, "thumb", void 0);
Review = __decorate([
    (0, typeorm_1.Entity)()
], Review);
exports.Review = Review;
