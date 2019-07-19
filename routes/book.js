const express = require('express');

const router = express.Router();

const bookController = require('../controllers/book');

const auth = require('../configs/auth');

//admin
router.post('/', auth.verifyToken, bookController.postBook);
router.put('/id/:id', auth.verifyToken, bookController.putBook);
router.delete('/id/:id', auth.verifyToken, bookController.deleteBook);

//user
router.get('/',  bookController.getAllBook);
router.get('/id/:id',  bookController.getBookById);
router.get('/pengarang/:pengarang',  bookController.getBookByPengarang);
router.get('/kategori/:kategori',  bookController.getBookByKategori);
router.post('/order',  bookController.orderBook);

module.exports = router;