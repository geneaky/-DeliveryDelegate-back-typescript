import {Column, Entity, JoinColumn, OneToMany, PrimaryGeneratedColumn} from "typeorm";
import {Thumb} from "./thumb.model";
import {Delegator} from "./delegator.model";
import {Review} from "./review.model";

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

    @OneToMany(() => Thumb, (thumb) => thumb.user)
    thumb: Thumb[]

    @OneToMany(() => Delegator, (delegator) => delegator.user)
    delegator: Delegator[]

    @OneToMany(() => Review, (review) => review.user)
    review: Review[]

}