const express = require('express');

const userController = require('../controllers/user');


const router = express.Router();


router.post('/register', userController.postRegister);
router.post('/login', userController.postLogin);
//router.put('/:id', productController.putProduct);
//router.delete('/', productController.deleteProduct);

module.exports = router;