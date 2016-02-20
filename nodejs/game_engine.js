swift_program = function() {
  return exec(cmd, {timeout: 1000},
    function(error, stdout, stderr) {
      responseMessage = (stdout||'none');
      console.log('stderr: '+(stderr||'none'));
      if(error != null){
        console.log('exec error: '+error);
      }
    }
  )
};

var responseMessage;
responseMessage = "";
var exec = require('child_process').exec, cmd;
cmd = './game_engine.swift';

swift_program();
var http = require('http');
http.createServer(function (request, response) {
  response.writeHead(200, {'Content-Type': 'text/plain'});
  response.end(responseMessage);
}).listen(8124);
  console.log('Server running at http://127.0.0.1:8124');

