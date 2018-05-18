let bcrypt = require('bcryptjs');
// node-datetime
let dateTime = require('node-datetime');
let dt = dateTime.create(); dt.format('m/d/Y H:M:S');
// ./node-datetime
let sanitizer = require('sanitizer');// Handling Input Xss

// Connection
let mysql      = require('mysql');
let connection = mysql.createConnection({
	host : "localhost",
	user : "root",
	password : "",
	database : "man2",
	multipleStatements: true
});
// ./Connection

exports.dashboard = function(req, res){
	let userId = req.session.userId;
	if(userId == null){
	  res.redirect("/");
	  return;
	}
	let sql = "SELECT * FROM pesan_chat_pengguna WHERE pengirim_pesan_chat_pengguna='"+userId+"' or penerima_pesan_chat_pengguna='"+userId+"' order by waktu_pesan_chat_pengguna asc";
	req.getConnection(function (err, connection) {
	 connection.query(sql, function (err, results) {
	   res.render('dashboard.ejs',{data:results, session:userId});
		 // res.writeHead(200, {'Context-Type' : 'application/json'});
		 // res.end(JSON.stringify(results));
	 });
	});
};

// History chat
exports.chat_user_pegawai_history = function(req, res){
  let userId = req.session.userId;
  if(userId == null){
		res.redirect("/");
		return;
  }
  let sql = "SELECT * FROM pesan_chat_pengguna WHERE pengirim_pesan_chat_pengguna='"+userId+"' or penerima_pesan_chat_pengguna='"+userId+"' order by waktu_pesan_chat_pengguna asc";
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
exports.chat_user_pegawai = function(req,res){
	let userId = req.session.userId;
  if(userId == null){
		res.redirect("/");
		return;
  }
  let input = JSON.parse(JSON.stringify(req.body));
  req.getConnection(function (err, connection) {
    let data = {
      pengirim_pesan_chat_pengguna  : input.pengirim_pesan_chat_pengguna,
      penerima_pesan_chat_pengguna  : 'bot',
      isi_pesan_chat_pengguna       : sanitizer.escape(input.isi_pesan_chat_pengguna),
      waktu_pesan_chat_pengguna     : new Date(dt.now())
    };
    // connection.query("INSERT INTO pesan_chat_pengguna set ?",data,function  (err,rows) {
  	// if (err) throw err;
		// console.log("Pesan : '"+data.isi_pesan_chat_pengguna+"' Berhasil dikirim oleh '"+data.pengirim_pesan_chat_pengguna+"' ke '"+data.penerima_pesan_chat_pengguna+"'");
		// res.json('berhasil menyimpan, ini balasan bot');
    // });

		// RESPONSE
		let pesan = input.isi_pesan_chat_pengguna;
		if ( pesan.match(/(nomor|telepon|handphone|hp)/gi) ) {
			str = pesan.split(' ');
			json = JSON.stringify(str);
			parse = JSON.parse(json);

			let data = {
	      pengirim_pesan_chat_pengguna  : input.pengirim_pesan_chat_pengguna,
	      penerima_pesan_chat_pengguna  : 'bot',
	      isi_pesan_chat_pengguna       : sanitizer.escape(input.isi_pesan_chat_pengguna),
	      waktu_pesan_chat_pengguna     : new Date(dt.now())
	    };

			let object = parse[1]; //objek pencarian
			let data2 = [object];
			let sql = "SELECT nama_pegawai,no_handphone_pegawai from data_pegawai where nama_pegawai=?";

			connection.query(sql, data2,function  (err,rows) {
	  	if (err){
				throw err;
			}
			else {
				console.log("Pesan : '"+data.isi_pesan_chat_pengguna+"' Berhasil dikirim oleh '"+data.pengirim_pesan_chat_pengguna+"' ke '"+data.penerima_pesan_chat_pengguna+"'");
				res.json("Nomor Telepon Atas Nama "+rows[0].nama_pegawai+" : "+rows[0].no_handphone_pegawai);
				// console.log(rows[0].nama_pegawai);
			}
	    });

			// let sql = "SELECT * FROM data_pegawai";
			// req.getConnection(function (err, connection) {
			// 	connection.query(sql, function (err, results) {
			// 		res.json(results);
			// 	});
			// });
			// console.log(parse[1]);
		}
		// else if ( pesan.match(/\D\w+\D/g) ){
		// 	res.json([{"name":"XSS Attack Detected"}]);
		// 	console.log("XSS Attack Detected");
		// 	// console.log(sanitizer.escape(pesan));
		// 	// res.json({"obj":[{"name":"tt"},{"name":"gg"}]}); JSON Objek
		// }
		else {
			console.log('tidak ada data');
			// res.json([{"name":"Tidak Ada Data"}]);
			// res.json({"obj":[{"name":"tt"},{"name":"gg"}]}); JSON Objek
		}
		// ./RESPONSE

		// res.end();
  });
};
