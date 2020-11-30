const express = require('express');
const flight = require('./router/flight.js')
const user = require('./router/user.js')
const enter = require('./router/enter.js')
const shop = require('./router/shopping.js')
const minsu = require('./router/minsu.js')
const bodyParser = require('body-parser');
const moiveRouter=require('./router/mt_moive.js')
const app = express();
app.listen(8080);

app.use(bodyParser.urlencoded({
    extended: false,
}));
app.use(express.static('./html'));

app.use('/fly', flight);

app.use('/mv',moiveRouter);
app.use('/user',user);
app.use('/enter',enter);
app.use('/shop',shop);
app.use('/minsu',minsu);
