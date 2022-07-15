import {Column, Entity, PrimaryGeneratedColumn} from "typeorm";

@Entity()
export class Order {

    @PrimaryGeneratedColumn()
    order_id: number

    @Column()
    store_name: string

    @Column()
    mapx: string

    @Column()
    mapy: string

    @Column()
    detail: string
}