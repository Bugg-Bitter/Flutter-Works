const express = require('express');
const morgan = require('morgan');
const app = express();
app.use(morgan('dev'));
app.use(express.json());

const tourRouter = require('./routes/tourRouter');
const userRouter = require('./routes/userRouter');

app.use('/api/v1/tours',tourRouter);

app.use('/api/v1/user',userRouter);

module.exports = app;