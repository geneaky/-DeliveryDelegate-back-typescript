import {Entity, PrimaryGeneratedColumn} from "typeorm";

@Entity()
export class Reciept {

    @PrimaryGeneratedColumn()
    reciept_id: number
}