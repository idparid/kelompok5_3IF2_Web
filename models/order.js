const Sequelize = require('sequelize');

const sequelize = require('../configs/sequelize');

class Order extends Sequelize.Model {}

Order.init({
  bookId: Sequelize.INTEGER,
  qty: Sequelize.INTEGER
}, { sequelize, modelName: 'order' });

module.exports = Order;