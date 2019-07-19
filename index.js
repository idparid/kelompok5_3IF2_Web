const express = require('express');

const bodyParser = require('body-parser');

const app = express();

app.set('view engine', 'ejs');

app.use(bodyParser.json());

const homeRouter = require('./routes/home');
const bookRouter = require('./routes/book');
const userRouter = require('./routes/user');


const sequelize = require('./configs/sequelize');

const Book = require('./models/book');
const User = require('./models/User');
const Order = require('./models/order');

app.use('/listapi', homeRouter);
app.use('/book', bookRouter);
app.use('/user', userRouter);

app.listen(3205, () => {
    console.log('server started');
    sequelize.sync();
})