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
	database : "man2",
	multipleStatements: true
});
// ./Connection

exports.dashboard = function(req, res){
	var userId = req.session.userId;
	if(userId == null){
	  res.redirect("/");
	  return;
	}
	var sql = "SELECT * FROM pesan_chat_pengguna WHERE pengirim_pesan_chat_pengguna='"+userId+"' or penerima_pesan_chat_pengguna='"+userId+"' order by waktu_pesan_chat_pengguna asc";
	req.getConnection(function (err, connection) {
	 connection.query(sql, function (err, results) {
	   res.render('dashboard.ejs',{data:results, session:userId});
		 // res.writeHead(200, {'Context-Type' : 'application/json'});
		 // res.end(JSON.stringify(results));
	 });
	});
};

// History chat
exports.chat_user_history = function(req, res){
  var userId = req.session.userId;
  if(userId == null){
		res.redirect("/");
		return;
  }
  var sql = "SELECT * FROM pesan_chat_pengguna WHERE pengirim_pesan_chat_pengguna='"+userId+"' or penerima_pesan_chat_pengguna='"+userId+"' order by waktu_pesan_chat_pengguna asc";
  req.getConnection(function (err, connection) {
    connection.query(sql, function (err, results) {
			// console.log(results);
      // res.writeHead(200, {'Context-Type' : 'application/json'});
      // res.end(JSON.stringify(results));
			res.json(results);
			// console.log(results);
    });
  });
};

// Insert Chat
exports.chat_user = function(req,res){
	var userId = req.session.userId;
  if(userId == null){
		res.redirect("/");
		return;
  }
  var input = JSON.parse(JSON.stringify(req.body));
  req.getConnection(function (err, connection) {
    var data = {
      pengirim_pesan_chat_pengguna  : input.pengirim_pesan_chat_pengguna,
      penerima_pesan_chat_pengguna  : 'bot',
      isi_pesan_chat_pengguna       : input.isi_pesan_chat_pengguna,
      waktu_pesan_chat_pengguna     : new Date(dt.now())
    };
      connection.query("INSERT INTO pesan_chat_pengguna set ?",data,function  (err,rows) {
    	if (err) throw err;
    	// res.send("Created "+JSON.stringify(rows));
			// console.log("Pesan : '"+data.isi_pesan_chat_pengguna+"' Berhasil dikirim oleh '"+data.pengirim_pesan_chat_pengguna+"' ke '"+data.penerima_pesan_chat_pengguna+"'");
			res.json('berhasil menyimpan, ini balasan bot');
      });
			// res.end();
  });
};

// bot reply chat
// exports.chat_bot_history = function(req, res){
//   var userId = req.session.userId;
//   if(userId == null){
// 		res.redirect("/");
// 		return;
//   }
//   var sql = "SELECT * FROM pesan_chat_bot;SELECT * FROM pesan_chat_pengguna";
//     connection.query(sql, function (err, results) {
// 			if (err) {
//         throw err;
//     }
// 			res.end(JSON.stringify(results));
//     });
// 		// connection.end();
// };

// Insert Chat bot
// exports.chat_bot = function(req,res){
// 	var userId = req.session.userId;
//   if(userId == null){
// 		res.redirect("/");
// 		return;
//   }
//   var input = JSON.parse(JSON.stringify(req.body));
//   req.getConnection(function (err, connection) {
//     var data = {
//       pengirim_pesan_chat_pengguna  : input.pengirim_pesan_chat_pengguna,
//       penerima_pesan_chat_pengguna  : 'bot',
//       isi_pesan_chat_pengguna       : input.isi_pesan_chat_pengguna,
//       waktu_pesan_chat_pengguna     : new Date(dt.now())
//     };
//       connection.query("INSERT INTO pesan_chat_pengguna set ?",data,function  (err,rows) {
//     	if (err) throw err;
//     	// res.send("Created "+JSON.stringify(rows));
// 			console.log("Pesan : '"+data.isi_pesan_chat_pengguna+"' Berhasil dikirim oleh '"+data.pengirim_pesan_chat_pengguna+"' ke '"+data.penerima_pesan_chat_pengguna+"'");
//       });
// 			res.end();
//   });
// };
