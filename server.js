const http = require('http');
const fs = require('fs');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'content-type': 'text/html' });
  fs.createReadStream('site/index.html').pipe(res);
});

server.listen(process.env.PORT || 3000);
console.log('Server running at http://localhost:3000/');
