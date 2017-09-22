Solution to modification of the example page 47 modifications:
+ The server manages multiple clients
+ For each client message A, it returns "Hello" + A
+ The client is not finishied once it send its first message
  + It sends periodically the same message every 5 secods

```js
// Client
var net = require('net');
var client = net.connect({port:9000};
  function(){
    console.log("client connected");
  });
client.on('data', function(msg){
  console.log(msg.toString());
});

var text = process.argv[2] || 'default identity';

client.on('end', function(){
  console.log('client disconnect');
});

setInterval(function(){
  client.write(text);
}), 5000);

// Server
var net = require('net');
var server = net.createServer(function(c){
  console.log('server connected');
  c.on('end', function(){
    console.log('server disconnected');
  });
  c.on('data', function(msg){
    c.write('Hello' + msg);
  });
}).listen(9000, function(){
  console.log('server bound');
});
```

### Exercises S1
#### Activity 1
a) Only the table of 5 will be printed with the function table(5,4,1) because the functions table only expects one argument

b) First the table(2) function is executed - This function those not return a number, instead it returns an undefined, so when the second call is done table(undefined) we are creating the table of NaN which always returns NaN. So the output is the printing of the NaN table:
NaN x 1 = NaN
NaN x 2 = NaN
...

c)





















