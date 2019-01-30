'use strict';
module.exports = (sequelize, DataTypes) => {
  const structures = sequelize.define('structures', {
    id: {
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
      type: DataTypes.INTEGER
    },
    structure_name: DataTypes.STRING,
    structure_type: DataTypes.STRING,
    total_space: DataTypes.INTEGER,
    occupied_space: DataTypes.INTEGER,
    color: DataTypes.STRING,
    status: {
      type: DataTypes.ENUM('active', 'inactive'),
    },
    latitude: DataTypes.FLOAT,
    longitude: DataTypes.FLOAT,
    hidden: {
      type: DataTypes.ENUM('false', 'true'),
    },
    low: DataTypes.INTEGER,
    medium: DataTypes.INTEGER,
    full: DataTypes.INTEGER
  }, {});
  structures.associate = function (models) {
    // associations can be defined here
  };
  return structures;
};