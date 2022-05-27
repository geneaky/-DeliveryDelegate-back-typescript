const Sequelize = require('sequelize');
const DataTypes = Sequelize.DataTypes;

const Game = (sequelize) => sequelize.define('Game',{
    game_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    game_type: {
        type: DataTypes.STRING,
        allowNull: false
    },
    game_name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    population: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    landmark_posx: {
        type: DataTypes.STRING,
        allowNull: false
    },
    landmark_posy: {
        type: DataTypes.STRING,
        allowNull: false
    }
})

module.exports = Game;