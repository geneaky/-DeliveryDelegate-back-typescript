const express = require('express');
const logger = require('morgan');
const dotenv = require('dotenv');
const authenticate = require('./middlewares/auth');
const {sequelize} = require('./models');
const usersRouter = require('./controllers/users');
const reviewRouter = require('./controllers/review');
const storeRouter = require('./controllers/store');
const mapRouter = require('./controllers/map');
const fs = require('fs');


dotenv.config();
const app = express();

sequelize.sync({force:false})
    .then(() => {
      console.log('success connecting database');
    })
    .catch((err) => {
      console.log('fail connecting database > ',err);
    });


app.use(express.static('public'));
app.use(logger('dev'));
app.use(express.json());

app.use('/users', usersRouter);
app.use('/store',authenticate, storeRouter);
app.use('/review',authenticate, reviewRouter);
app.use('/map',authenticate, mapRouter);


app.use((err, req, res, next) => {
  console.log(err.message);
  res.status(err.status|| 500).send(err.message);
});

module.exports = app;
