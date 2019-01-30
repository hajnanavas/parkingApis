'use strict';
module.exports = (sequelize, DataTypes) => {
  const structures = sequelize.define('structures', {
    id: DataTypes.INTEGER,
    structure_name: DataTypes.STRING,
    structure_type: DataTypes.STRING,
    total_space: DataTypes.INTEGER,
    occupied_space: DataTypes.INTEGER,
    color: DataTypes.STRING,
    status: DataTypes.ENUM,
    latitude: DataTypes.FLOAT,
    longitude: DataTypes.FLOAT,
    hidden: DataTypes.ENUM,
    low: DataTypes.INTEGER,
    medium: DataTypes.INTEGER,
    full: DataTypes.INTEGER
  }, {});
  structures.associate = function (models) {
    // associations can be defined here
  };
  return structures;
};