var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var tilesRouter = require('./routes/tilesRoutes');
var playersRouter = require('./routes/playersRoutes')
/*var cardsRouter = require('./routes/cardsRoutes');
var trapsRouter = require('./routes/trapsRoutes');*/

var app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/api/tiles',tilesRouter);
app.use('/api/players',playersRouter);
/*app.use('/api/cards',cardsRouter);
app.use('/api/traps',trapsRouter);*/

module.exports = app;
