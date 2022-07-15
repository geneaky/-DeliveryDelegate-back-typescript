import {Column, Entity, PrimaryGeneratedColumn} from "typeorm";

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

}