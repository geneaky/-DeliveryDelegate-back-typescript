import {Column, Entity, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn} from "typeorm";
import {Reciept} from "./reciept.model";
import {Thumb} from "./thumb.model";
import {Store} from "./store.model";
import {User} from "./user.model";

@Entity()
export class Review {

    @PrimaryGeneratedColumn()
    review_id: number

    @Column()
    content: string

    @ManyToOne(() => Store, (store) => store.review)
    @JoinColumn()
    store: Store

    @ManyToOne(() => User, (user) => user.review)
    @JoinColumn()
    user: User

    @OneToMany(() => Reciept, (recciept) => recciept.review)
    reciept: Reciept[]

    @OneToMany(() => Thumb, (thumb) => thumb.review)
    thumb: Thumb[]
}