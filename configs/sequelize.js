const Sequelize = require('sequelize');

const sequelize = new Sequelize('bookstore', 'root', 'password', {
	host: 'localhost',
	dialect: 'mysql'
});


module.exports = sequelize;