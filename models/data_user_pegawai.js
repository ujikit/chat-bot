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
	// if(userId == null){
	//   res.redirect("/");
	//   return;
	// }
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
exports.chat_user_pegawai_history = function(req, res){
  let userId = req.session.userId;
  // if(userId == null){
	// 	res.redirect("/");
	// 	return;
  // }
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
exports.chat_user_pegawai = function(req,res){
	let userId = req.session.userId;
  // if(userId == null){
	// 	res.redirect("/");
	// 	return;
  // }
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
		let json 	= JSON.stringify(pesan);
		let parse = JSON.parse(json);

		if (parse.length === 1){
			// console.log("Maksudnya '"+pesan+"' apa? \nMasukan ulang kata kunci yang lebih spesifik.");
			res.json("Maksudnya '"+pesan+"' apa? \nMasukan ulang kata kunci yang lebih spesifik.");
		}
		else {

			var sql = "SELECT * FROM data_pegawai WHERE nama_pegawai!='Administrator'"; //mencari semua kosa kata
			connection.query(sql,function  (err_data_pegawai,rows_data_pegawai){
				if (err_data_pegawai) throw err_data_pegawai;
				else if (rows_data_pegawai.length > 0) {

					for (var i = 0; i < rows_data_pegawai.length; i++){
						var nip_pegawai = rows_data_pegawai[i].nip_pegawai;
						// var nama_pegawai = rows[i].nama_pegawai;
						var regex = new RegExp(nip_pegawai, 'gi');
						var res = parse.match(regex);
						if (res) {
							var nip_pegawai = res;
							break;
						}
						else {
							nip_pegawai = null;
						}
					}
					for (var i = 0; i < rows_data_pegawai.length; i++){
						var nama_pegawai = rows_data_pegawai[i].nama_pegawai;
						console.log(nama_pegawai+"\n");
						var regex = new RegExp(nama_pegawai, 'gi');
						var res = parse.match(regex);
						// if (res) {
						// 	var nama_pegawai = res;
						// 	break;
						// }
						// else {
						// 	nama_pegawai = null;
						// }
					}

				}

				var sql = "SELECT * FROM data_siswa"; //mencari semua kosa kata
				connection.query(sql,function  (err_data_siswa,rows_data_siswa){
					if (err_data_siswa){ throw err_data_siswa; }
					else if (rows_data_siswa.length > 0) {

						for (var i = 0; i < rows_data_siswa.length; i++){
							var nis_siswa = rows_data_siswa[i].nis_siswa;
							// var nama_pegawai = rows[i].nama_pegawai;
							var regex = new RegExp(nis_siswa, 'gi');
							var res = parse.match(regex);
							if (res) {
								var nis_siswa = res;
								break;
							}
							else {
								nis_siswa = null;
							}
						}
						for (var i = 0; i < rows_data_siswa.length; i++){
							var nama_siswa = rows_data_siswa[i].nama_siswa;
							var regex = new RegExp(nama_siswa, 'gi');
							var res = parse.match(regex);
							if (res) {
								var nama_siswa = res;
								break;
							}
							else {
								nama_siswa = null;
							}
						}

					}

					console.log("");
					console.log(nip_pegawai);
					console.log(nama_pegawai);
					console.log(nis_siswa);
					console.log(nama_siswa);
					if (nip_pegawai !== null) {
          console.log("nip_pegawai terisi");
					}
					else if (nama_pegawai !== null) {
          console.log("nama pegawai terisi");
					}
					else if (nis_siswa !== null) {
          console.log("nis terisi");
					}
					else if (nama_siswa !== null) {
          console.log("siswa terisi");
					}





					// if(typeof pases.nip_pegawai === 'number'){
					// 	console.log("ya ni number");
					// 	console.log(pases);
					// }
					// else if (typeof pases.nama_pegawai[0] === 'string') {
					// 	console.log("ya ni string");
					// 	console.log(pases);
					// }
					// else {
					// 	console.log("error");
					// }
				});

			});

		}
  });
};
