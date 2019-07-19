const Book = require('../models/book');
const Order = require('../models/order');

const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');
dotenv.config();

module.exports.getAllBook = (req, res) => {
	
	
	Book.findAll()
		.then((book) => {
			res.json(book);
		})
		.catch((error) => {
			console.log(error);
		});


}

module.exports.postBook = (req, res) => {
	jwt.verify(req.token, process.env.SECRETKEY, (error, authData) => {
		if(error){
			res.sendStatus(403);
		}else{
			if(authData['roles'] == "admin") {
				Book.create({
					
					judul: req.body.judul,
					kategori: req.body.kategori,
					pengarang: req.body.pengarang,
					penerbit:req.body.penerbit,
					tahun_terbit: req.body.tahun_terbit,
					stok: req.body.stok,
					deskripsi: req.body.deskripsi,
					jumlah_halaman: req.body.jumlah_halaman,
					harga: req.body.harga
				}).then((book) => {
					res.json(book);
				}).catch((error) => {
					console.log(error);
				})
			}
			
		}
	})
	
	
}


module.exports.putBook = (req, res) => {
	jwt.verify(req.token, process.env.SECRETKEY, (error, authData) => {
		if(error){
			res.sendStatus(403);
		}else{
			if(authData['roles'] == "admin") {
				let values = {
					judul: req.body.judul,
					kategori: req.body.kategori,
					pengarang: req.body.pengarang,
					penerbit:req.body.penerbit,
					tahun_terbit: req.body.tahun_terbit,
					stok: req.body.stok,
					deskripsi: req.body.deskripsi,
					jumlah_halaman: req.body.jumlah_halaman,
					harga: req.body.harga
				}
				
				let conditions = {
				where: {
					id: req.params.id
				  }
				}
				
				Book
				.update(values, conditions)
				.then((book) => {
					res.json(book);
				})
				.catch((error) => {
					console.log(error);
				})
			}
			
		}
	})
		
}

module.exports.deleteBook = (req,res) => {
	jwt.verify(req.token, process.env.SECRETKEY, (error, authData) => {
		if(error){
			res.sendStatus(403);
		}else{
			if(authData['roles'] == "admin") {
				Book.destroy({
	
					where: {
						id: req.params.id
					}
				}).then((book) => {
					res.json(book);
				}).catch((error) => {
					throw error;
				})
			}
			
		}
	})
	
}

module.exports.getBookById = (req,res) => {
		
	Book
		.findByPk(req.params.id)
		.then((book) => {
			res.json(book);
		})
		.catch((error) => {
			console.log(error);
		})
}

module.exports.getBookByPengarang = (req,res) => {
	Book
		.findAll({
			where: {
				pengarang: req.params.pengarang
			}
		})
		.then((book) => {
			res.json(book);
		})
		.catch((error) => {
			throw error;
		});
}

module.exports.getBookByKategori = (req,res) => {
	Book
		.findAll({
			where: {
				kategori: req.params.kategori
			}
		})
		.then((book) => {
			res.json(book);
		})
		.catch((error) => {
			throw error;
		});
}

module.exports.orderBook = (req,res) => {
	Order.create({
		
		  bookId: req.body.bookId,
		  qty: req.body.qty
  
	}).then((order) => {
		res.json(order);
	}).catch((error) => {
		throw error;
	})
}

