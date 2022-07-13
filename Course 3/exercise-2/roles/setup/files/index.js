var http = require("http");
var server = http.createServer(function (req, res) {
res.writeHead(200);
res.end("Hello world! It finally works automated. Blue Green deployment flow fully complete");
});
server.listen(3000);