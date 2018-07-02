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
    var data = {
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
		// let str 	= pesan.split(' ');
		let json 	= JSON.stringify(pesan);
		let parse = JSON.parse(json);

		if (parse.length === 1){
			// console.log("Maksudnya '"+pesan+"' apa? \nMasukan ulang kata kunci yang lebih spesifik.");
			res.json("Maksudnya '"+pesan+"' apa? \nMasukan ulang kata kunci yang lebih spesifik.");
		}
		else {

			// Cek kosa kata
			let sql = "SELECT * from pesan_chat_bot_kosa_kata"; //mencari semua kosa kata
			connection.query(sql,function  (err,rows){
			if (err){ throw err; }
			else if (rows.length > 0) {
				for (var i = 0; i < rows.length; i++){
					var kosa_kata = rows[i].kosa_kata_pesan_chat_bot_kosa_kata;
						var regex = new RegExp(kosa_kata, 'gi');
						var res1 = parse.match(regex);
						if (res1) {
							console.log(res1);
	            // Cek objek
							let sql2 = "SELECT nip_pegawai, nama_pegawai FROM data_pegawai where nama_pegawai!='Administrator'";
							connection.query(sql2, function  (err,rowss){
							for (var j = 0; j < rowss.length; j++){
								var objek = rowss[j].nama_pegawai;
								var regex2 = new RegExp(objek, 'gi');
								var res2 = parse.match(regex2);
								if (res2) {
									console.log("ketemu!");
									res.json("sudah!");
									break;
								}
								else {
									console.log("Objek pencarian tidak ditemukan");
								}
							}
							// console.log(rowss);
							});
	            // ./Cek objek
							break;
						}
						else {
							console.log("kosa kata tidak ditemukan!");
						}
				}
			}
			else {
				console.log("tidak ada");
			}
			});
			// ./Cek kosa kata

		}
		// ./RESPONSE

  });
};
