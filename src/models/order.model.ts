import {Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn} from "typeorm";
import {Delegator} from "./delegator.model";

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

    @ManyToOne(() => Delegator,(delegator) => delegator.order)
    @JoinColumn()
    delegator: Delegator

}