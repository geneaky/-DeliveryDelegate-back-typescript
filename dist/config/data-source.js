"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.AppDataSource = void 0;
var typeorm_1 = require("typeorm");
var delegator_model_1 = require("../models/delegator.model");
var user_model_1 = require("../models/user.model");
var game_model_1 = require("../models/game.model");
var order_model_1 = require("../models/order.model");
var reciept_model_1 = require("../models/reciept.model");
var review_model_1 = require("../models/review.model");
var store_model_1 = require("../models/store.model");
var thumb_model_1 = require("../models/thumb.model");
exports.AppDataSource = new typeorm_1.DataSource({
    type: "mysql",
    host: "localhost",
    port: 3306,
    username: "root",
    password: "root",
    database: "daldaepyo",
    synchronize: true,
    logging: true,
    entities: [user_model_1.User, game_model_1.Game, order_model_1.Order, reciept_model_1.Reciept, review_model_1.Review, store_model_1.Store, thumb_model_1.Thumb, delegator_model_1.Delegator],
    subscribers: [],
    migrations: []
});
//# sourceMappingURL=data-source.js.map