"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Reciept = void 0;
const typeorm_1 = require("typeorm");
const review_model_1 = require("./review.model");
let Reciept = class Reciept {
};
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)()
], Reciept.prototype, "reciept_id", void 0);
__decorate([
    (0, typeorm_1.OneToMany)(() => review_model_1.Review, (review) => review.reciept),
    (0, typeorm_1.JoinColumn)()
], Reciept.prototype, "review", void 0);
Reciept = __decorate([
    (0, typeorm_1.Entity)()
], Reciept);
exports.Reciept = Reciept;
