import {Column, Entity, JoinColumn, OneToMany, PrimaryGeneratedColumn} from "typeorm";
import {Review} from "./review.model";

@Entity()
export class Reciept {

    @PrimaryGeneratedColumn()
    reciept_id: number

    @Column()
    anything: number

    @OneToMany(() => Review, (review) => review.reciept)
    @JoinColumn()
    review: Review[]
}