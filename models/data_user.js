var bcrypt = require('bcryptjs');
// node-datetime
var dateTime = require('node-datetime');
var dt = dateTime.create();
dt.format('m/d/Y H:M:S');
// ./node-datetime

// Connection
var mysql      = require('mysql');
var connection = mysql.createConnection({
	host : "localhost",
	user : "root",
	password : "",
	database : "man2"
});
// ./Connection

exports.data_chat = function(req, res){
  var userId = req.session.userId;
  if(userId == null){
     res.redirect("/login");
     return;
  }

  var sql = "SELECT * FROM `pesan_chat_pengguna` WHERE `pengirim_pesan_chat_pengguna`='"+userId+"' or `penerima_pesan_chat_pengguna`='"+userId+"' order by waktu_pesan_chat_pengguna asc";

  req.getConnection(function (err, connection) {
    connection.query(sql, function (err, results) {
			// console.log(results);
      // res.writeHead(200, {'Context-Type' : 'application/json'});
      // res.end(JSON.stringify(results));
			res.json(results);
    });
  });
};
