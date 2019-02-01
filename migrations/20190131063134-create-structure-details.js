'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('structure_details', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      structure_id: {
        type: Sequelize.INTEGER,
        // onDelete: "CASCADE",
        // allowNull: false,
        // references: {
        //   model: 'structures',
        //   key: 'id'
        // }
      },
      abbreviated_name: {
        type: Sequelize.STRING
      },
      description: {
        type: Sequelize.STRING
      },
      note: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('structure_details');
  }
};