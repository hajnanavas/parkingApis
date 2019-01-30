'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('structures', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      structure_name: {
        type: Sequelize.STRING
      },
      structure_type: {
        type: Sequelize.STRING
      },
      total_space: {
        type: Sequelize.INTEGER
      },
      occupied_space: {
        type: Sequelize.INTEGER
      },
      color: {
        type: Sequelize.STRING
      },
      status: {
        type: Sequelize.ENUM
      },
      latitude: {
        type: Sequelize.FLOAT
      },
      longitude: {
        type: Sequelize.FLOAT
      },
      hidden: {
        type: Sequelize.ENUM
      },
      low: {
        type: Sequelize.INTEGER
      },
      medium: {
        type: Sequelize.INTEGER
      },
      full: {
        type: Sequelize.INTEGER
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
    return queryInterface.dropTable('structures');
  }
};