import * as Sequelize from "sequelize";
import {IntegerDataType, Model} from "sequelize";

const DataTypes = Sequelize.DataTypes;

export interface DelegatorModel {
    delegator_id: {
        type: Sequelize.DataTypes.IntegerDataType,
        autoIncrement: boolean,
        primaryKey: boolean
    },
    ranking: {
        type: Sequelize.DataTypes.IntegerDataType,
        allowNull: boolean,
        unique: boolean
    }
}

export class Delegator extends Model implements DelegatorModel {
    delegator_id: { type: IntegerDataType; autoIncrement: boolean; primaryKey: boolean };
    ranking: { type: IntegerDataType; allowNull: boolean; unique: boolean };

}

Model = (sequelize) => sequelize.define('Delegator',{
    delegator_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    ranking: {
        type: DataTypes.INTEGER,
        allowNull: true,
        unique: true,
    }
});