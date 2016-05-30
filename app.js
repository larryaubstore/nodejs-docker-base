var http = require('http');
var reload = require('reload');

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Application node de base sur le container: \n'+process.env.HOSTNAME);
    res.redirect('back');
}).listen(3000);
console.log('Le server est sur le port 3000/');
