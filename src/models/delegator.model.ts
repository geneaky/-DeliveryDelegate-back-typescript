import {Column, Entity, ManyToOne, OneToMany, PrimaryGeneratedColumn, JoinColumn} from "typeorm";
import {User} from "./user.model";
import {Game} from "./game.model";
import {Order} from "./order.model";

@Entity()
export class Delegator {

    @PrimaryGeneratedColumn()
    delegator_id: number

    @Column()
    ranking: number

    @ManyToOne(() => User,(user) => user.delegator)
    @JoinColumn()
    user: User

    @ManyToOne(() => Game,(game) => game.delegator)
    @JoinColumn()
    game: Game

    @OneToMany(() => Order,(order) => order.delegator)
    order: Order[]

}