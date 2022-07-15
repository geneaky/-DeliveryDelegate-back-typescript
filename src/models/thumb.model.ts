import {Column, Entity, PrimaryGeneratedColumn} from "typeorm";

@Entity()
export class Thumb {

    @PrimaryGeneratedColumn()
    thumb_id: number

    @Column()
    thumb_up: boolean

    @Column()
    thumb_down: boolean
}