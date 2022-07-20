import {Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn} from "typeorm";
import {User} from "./user.model";
import {Review} from "./review.model";

@Entity()
export class Thumb {

    @PrimaryGeneratedColumn()
    thumb_id: number

    @Column()
    thumb_up: boolean

    @Column()
    thumb_down: boolean

    @ManyToOne(() => User, (user) => user.thumb)
    @JoinColumn()
    user: User

    @ManyToOne(() => Review, (review) => review.thumb)
    @JoinColumn()
    review: Review
}