'use strict';
module.exports = (sequelize, DataTypes) => {
  const structure_details = sequelize.define('structure_details', {
    id: {
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
      type: DataTypes.INTEGER
    },
    structure_id:  {
      type: DataTypes.INTEGER,
      onDelete: "CASCADE",
      allowNull: false,
      references: {
        model: 'structures',
        key: 'id'
      }
    },
    abbreviated_name: DataTypes.STRING,
    description: DataTypes.STRING,
    note: DataTypes.STRING
  }, {});

  structure_details.associate = function(models) {
    // associations can be defined here
      models.structure_details.belongsTo(models.structures, {
        onDelete: "CASCADE",
        foreignKey: {
          allowNull: false,
          key: 'structure_id'
        }
      });
  };

  return structure_details;
};