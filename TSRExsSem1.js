var net = require("net")
var fs = require ('fs')
var votos = []

var server = net.createServer(function(c){
	c.on('data', function(data){
		//A compeltar
	})
})


server.listen(9000, function(){
	console.log("Server bound")
})

function guardar(){
	//A completar
	cpnsole.log("datos volcados a disco")
}

//A completar