const express = require('express');
const router = require('./router/router.js')
const bodyParser = require('body-parser');

const app = express();
app.listen(8080);

app.use(bodyParser.urlencoded({
    extended: false,
}));
app.use(express.static('./html'));

app.use('/mt', router);