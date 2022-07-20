import {Column, Entity, OneToMany, PrimaryGeneratedColumn} from "typeorm";
import {Delegator} from "./delegator.model";

@Entity()
export class Game {

    @PrimaryGeneratedColumn()
    game_id: number

    @Column()
    game_type: string

    @Column()
    game_name: string

    @Column()
    population: number

    @Column()
    landmark_posx: string

    @Column()
    landmark_posy: string

    @Column()
    socket_room_name: string

    @OneToMany(() => Delegator,(delegator) => delegator.game)
    delegator: Delegator[]
}