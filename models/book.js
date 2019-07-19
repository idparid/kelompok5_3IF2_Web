const Sequelize = require('sequelize');

const sequelize = require('../configs/sequelize');

class Book extends Sequelize.Model {}

Book.init({
  judul: Sequelize.STRING,
  kategori: Sequelize.STRING,
  pengarang: Sequelize.STRING,
  penerbit:Sequelize.STRING,
  tahun_terbit: Sequelize.INTEGER,
  stok: Sequelize.INTEGER,
  deskripsi: Sequelize.STRING,
  jumlah_halaman: Sequelize.INTEGER,
  harga: Sequelize.INTEGER
}, { sequelize, modelName: 'book' });

module.exports = Book;