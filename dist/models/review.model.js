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
exports.Review = void 0;
var typeorm_1 = require("typeorm");
var reciept_model_1 = require("./reciept.model");
var thumb_model_1 = require("./thumb.model");
var store_model_1 = require("./store.model");
var user_model_1 = require("./user.model");
var Review = (function () {
    function Review() {
    }
    __decorate([
        (0, typeorm_1.PrimaryGeneratedColumn)(),
        __metadata("design:type", Number)
    ], Review.prototype, "review_id", void 0);
    __decorate([
        (0, typeorm_1.Column)(),
        __metadata("design:type", String)
    ], Review.prototype, "content", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return store_model_1.Store; }, function (store) { return store.review; }),
        (0, typeorm_1.JoinColumn)(),
        __metadata("design:type", store_model_1.Store)
    ], Review.prototype, "store", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return user_model_1.User; }, function (user) { return user.review; }),
        (0, typeorm_1.JoinColumn)(),
        __metadata("design:type", user_model_1.User)
    ], Review.prototype, "user", void 0);
    __decorate([
        (0, typeorm_1.OneToMany)(function () { return reciept_model_1.Reciept; }, function (recciept) { return recciept.review; }),
        __metadata("design:type", Array)
    ], Review.prototype, "reciept", void 0);
    __decorate([
        (0, typeorm_1.OneToMany)(function () { return thumb_model_1.Thumb; }, function (thumb) { return thumb.review; }),
        __metadata("design:type", Array)
    ], Review.prototype, "thumb", void 0);
    Review = __decorate([
        (0, typeorm_1.Entity)()
    ], Review);
    return Review;
}());
exports.Review = Review;
//# sourceMappingURL=review.model.js.map