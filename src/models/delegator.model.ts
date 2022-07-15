import {Column, Entity, PrimaryGeneratedColumn} from "typeorm";

@Entity()
export class Delegator {

    @PrimaryGeneratedColumn()
    delegator_id: number

    @Column()
    ranking: number
}