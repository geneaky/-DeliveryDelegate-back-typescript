"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Game = void 0;
const typeorm_1 = require("typeorm");
const delegator_model_1 = require("./delegator.model");
let Game = class Game {
};
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)()
], Game.prototype, "game_id", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Game.prototype, "game_type", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Game.prototype, "game_name", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Game.prototype, "population", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Game.prototype, "landmark_posx", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Game.prototype, "landmark_posy", void 0);
__decorate([
    (0, typeorm_1.Column)()
], Game.prototype, "socket_room_name", void 0);
__decorate([
    (0, typeorm_1.OneToMany)(() => delegator_model_1.Delegator, (delegator) => delegator.game)
], Game.prototype, "delegator", void 0);
Game = __decorate([
    (0, typeorm_1.Entity)()
], Game);
exports.Game = Game;
