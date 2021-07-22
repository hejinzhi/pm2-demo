'use strict';

const http = require('http');

http.createServer((req, res) => {
  res.writeHead(200);
  res.end('hello world');
}).listen(process.env.PORT || 3000, () => {
  console.log('App listening on port 3000');
});
