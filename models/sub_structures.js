'use strict';
module.exports = (sequelize, DataTypes) => {
  const sub_structures = sequelize.define('sub_structures', {
    id: {
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
      type: DataTypes.INTEGER
    },
    structure_id: {
      type: DataTypes.INTEGER,
      onDelete: "CASCADE",
      allowNull: false,
      references: {
        model: 'structures',
        key: 'id'
      }
    },
    structure_name: DataTypes.STRING,
    structure_type: DataTypes.STRING,
    total_space: DataTypes.INTEGER,
    occupied_space: DataTypes.INTEGER,
    color: DataTypes.STRING,
    status: DataTypes.ENUM(['active', 'inactive']),
    latitude: DataTypes.FLOAT,
    longitude: DataTypes.FLOAT,
    hidden: DataTypes.ENUM(['false', 'true']),
    low: DataTypes.INTEGER,
    medium: DataTypes.INTEGER,
    full: DataTypes.INTEGER
  }, {});

  sub_structures.associate = function(models) {
    // associations can be defined here
    models.sub_structures.belongsTo(models.structures, {
      onDelete: "CASCADE",
      foreignKey: {
        allowNull: false,
        key: 'structure_id'
      }
    });
  };
  
  return sub_structures;
};