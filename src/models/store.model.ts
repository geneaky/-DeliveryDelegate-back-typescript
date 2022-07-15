import {Column, Entity, PrimaryGeneratedColumn} from "typeorm";

@Entity()
export class Store {

    @PrimaryGeneratedColumn()
    store_id: number

    @Column()
    store_name: string

    @Column()
    store_posx: string

    @Column()
    store_posy: string

    @Column()
    store_address: string
}