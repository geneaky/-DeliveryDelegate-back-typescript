"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.User = void 0;
const typeorm_1 = require("typeorm");
const thumb_model_1 = require("./thumb.model");
const delegator_model_1 = require("./delegator.model");
const review_model_1 = require("./review.model");
let User = class User {
};
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)()
], User.prototype, "user_id", void 0);
__decorate([
    (0, typeorm_1.Column)()
], User.prototype, "phone_number", void 0);
__decorate([
    (0, typeorm_1.Column)()
], User.prototype, "password", void 0);
__decorate([
    (0, typeorm_1.Column)()
], User.prototype, "nickname", void 0);
__decorate([
    (0, typeorm_1.Column)()
], User.prototype, "self_posx", void 0);
__decorate([
    (0, typeorm_1.Column)()
], User.prototype, "self_posy", void 0);
__decorate([
    (0, typeorm_1.Column)()
], User.prototype, "exemption_count", void 0);
__decorate([
    (0, typeorm_1.OneToMany)(() => thumb_model_1.Thumb, (thumb) => thumb.user)
], User.prototype, "thumb", void 0);
__decorate([
    (0, typeorm_1.OneToMany)(() => delegator_model_1.Delegator, (delegator) => delegator.user)
], User.prototype, "delegator", void 0);
__decorate([
    (0, typeorm_1.OneToMany)(() => review_model_1.Review, (review) => review.user)
], User.prototype, "review", void 0);
User = __decorate([
    (0, typeorm_1.Entity)()
], User);
exports.User = User;
