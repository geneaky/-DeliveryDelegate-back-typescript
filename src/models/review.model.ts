import {Column, Entity, PrimaryGeneratedColumn} from "typeorm";

@Entity()
export class Review {

    @PrimaryGeneratedColumn()
    review_id: number

    @Column()
    content: string
}