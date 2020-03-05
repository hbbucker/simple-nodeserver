var express = require('express');
var app = express();

// Variável de ambiente para atribuir a porta ou porta padrão
const PORT = process.env.NODE_PORT || 3000;

app.get('/', function (req, res) {
    res.send('Hello World! on port:' + PORT);
});

app.listen(PORT, function () {
    console.log('Example app listening on port ' + PORT);
});