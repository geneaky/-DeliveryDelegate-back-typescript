import { DataSource } from "typeorm";
import { Delegator } from "../models/delegator.model";
import { User } from "../models/user.model";
import { Game } from "../models/game.model";
import { Order } from "../models/order.model";
import { Reciept } from "../models/reciept.model";
import { Review } from "../models/review.model";
import { Store } from "../models/store.model";
import { Thumb } from "../models/thumb.model";
export const AppDataSource = new DataSource({
    type: "mysql",
    host: "localhost",
    port: 3306,
    username: "root",
    password: "root",
    database: "daldaepyo",
    synchronize: true,
    logging: true,
    entities: [User, Game, Order, Reciept, Review, Store, Thumb, Delegator],
    subscribers: [],
    migrations: []
});
//# sourceMappingURL=data-source.js.map