import {Column, Entity, PrimaryGeneratedColumn} from "typeorm";

@Entity()
export class User {

    @PrimaryGeneratedColumn()
    user_id: number

    @Column()
    phone_number: string

    @Column()
    password: string

    @Column()
    nickname: string

    @Column()
    self_posx: string

    @Column()
    self_posy: string

    @Column()
    exemption_count: number

}