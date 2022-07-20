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
import { Delegator } from "./delegator.model";
let Game = class Game {
};
__decorate([
    PrimaryGeneratedColumn(),
    __metadata("design:type", Number)
], Game.prototype, "game_id", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Game.prototype, "game_type", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Game.prototype, "game_name", void 0);
__decorate([
    Column(),
    __metadata("design:type", Number)
], Game.prototype, "population", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Game.prototype, "landmark_posx", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Game.prototype, "landmark_posy", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Game.prototype, "socket_room_name", void 0);
__decorate([
    OneToMany(() => Delegator, (delegator) => delegator.game),
    __metadata("design:type", Array)
], Game.prototype, "delegator", void 0);
Game = __decorate([
    Entity()
], Game);
export { Game };
//# sourceMappingURL=game.model.js.map