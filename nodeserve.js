var http = require("http"),
    fileSystem = require('fs'),
    path = require('path');

http.createServer(function (request, response) {
   var filePath = path.join(__dirname, 'index.html');
   var stat = fileSystem.statSync(filePath);
   // Send the HTTP header
   // HTTP Status: 200 : OK
   // Content Type: text/html

   response.writeHead(200, {'Content-Type': 'text/html'});

   var readStream = fileSystem.createReadStream(filePath);

   // Send the response body as "Hello World"
   readStream.pipe(response);

}).listen(8081);

// Console will print the message
console.log('Server running at http://127.0.0.1:8081/');
