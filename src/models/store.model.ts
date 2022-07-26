import {Column, Entity, OneToMany, PrimaryGeneratedColumn} from "typeorm";
import {Review} from "./review.model";

@Entity()
export class Store {

    @PrimaryGeneratedColumn()
    store_id: number;

    @Column()
    store_name: string

    @Column()
    store_posx: string

    @Column()
    store_posy: string

    @Column()
    store_address: string

    @OneToMany(() => Review, (review) => review.store)
    review: Review[]

}