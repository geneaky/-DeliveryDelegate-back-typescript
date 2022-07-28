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
exports.Reciept = void 0;
var typeorm_1 = require("typeorm");
var review_model_1 = require("./review.model");
var Reciept = (function () {
    function Reciept() {
    }
    __decorate([
        (0, typeorm_1.PrimaryGeneratedColumn)(),
        __metadata("design:type", Number)
    ], Reciept.prototype, "reciept_id", void 0);
    __decorate([
        (0, typeorm_1.Column)(),
        __metadata("design:type", Number)
    ], Reciept.prototype, "anything", void 0);
    __decorate([
        (0, typeorm_1.OneToMany)(function () { return review_model_1.Review; }, function (review) { return review.reciept; }),
        (0, typeorm_1.JoinColumn)(),
        __metadata("design:type", Array)
    ], Reciept.prototype, "review", void 0);
    Reciept = __decorate([
        (0, typeorm_1.Entity)()
    ], Reciept);
    return Reciept;
}());
exports.Reciept = Reciept;
//# sourceMappingURL=reciept.model.js.map