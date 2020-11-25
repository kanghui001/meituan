const express = require('express');
const flight = require('./router/flight.js')
const bodyParser = require('body-parser');

const app = express();
app.listen(8080);

app.use(bodyParser.urlencoded({
    extended: false,
}));
app.use(express.static('./html'));

app.use('/fly', flight);