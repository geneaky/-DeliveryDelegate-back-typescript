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
exports.User = void 0;
var typeorm_1 = require("typeorm");
var thumb_model_1 = require("./thumb.model");
var delegator_model_1 = require("./delegator.model");
var review_model_1 = require("./review.model");
var User = (function () {
    function User() {
    }
    __decorate([
        (0, typeorm_1.PrimaryGeneratedColumn)(),
        __metadata("design:type", Number)
    ], User.prototype, "user_id", void 0);
    __decorate([
        (0, typeorm_1.Column)(),
        __metadata("design:type", String)
    ], User.prototype, "phone_number", void 0);
    __decorate([
        (0, typeorm_1.Column)(),
        __metadata("design:type", String)
    ], User.prototype, "password", void 0);
    __decorate([
        (0, typeorm_1.Column)(),
        __metadata("design:type", String)
    ], User.prototype, "nickname", void 0);
    __decorate([
        (0, typeorm_1.Column)(),
        __metadata("design:type", String)
    ], User.prototype, "self_posx", void 0);
    __decorate([
        (0, typeorm_1.Column)(),
        __metadata("design:type", String)
    ], User.prototype, "self_posy", void 0);
    __decorate([
        (0, typeorm_1.Column)(),
        __metadata("design:type", Number)
    ], User.prototype, "exemption_count", void 0);
    __decorate([
        (0, typeorm_1.OneToMany)(function () { return thumb_model_1.Thumb; }, function (thumb) { return thumb.user; }),
        __metadata("design:type", Array)
    ], User.prototype, "thumb", void 0);
    __decorate([
        (0, typeorm_1.OneToMany)(function () { return delegator_model_1.Delegator; }, function (delegator) { return delegator.user; }),
        __metadata("design:type", Array)
    ], User.prototype, "delegator", void 0);
    __decorate([
        (0, typeorm_1.OneToMany)(function () { return review_model_1.Review; }, function (review) { return review.user; }),
        __metadata("design:type", Array)
    ], User.prototype, "review", void 0);
    User = __decorate([
        (0, typeorm_1.Entity)()
    ], User);
    return User;
}());
exports.User = User;
//# sourceMappingURL=user.model.js.map