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
		let str 	= pesan.split(' ');
		let json 	= JSON.stringify(str);
		let parse = JSON.parse(json);

		if (parse.length <= 1){
			// console.log("Maksudnya '"+pesan+"' apa? \nMasukan ulang kata kunci yang lebih spesifik.");
			res.json("Maksudnya '"+pesan+"' apa? \nMasukan ulang kata kunci yang lebih spesifik.");
		}
		else {

			if ( pesan.match(/(no|nomer|nomor)-(hp|handphone|telepon|)/gi) ){
				let data = {
		      pengirim_pesan_chat_pengguna  : input.pengirim_pesan_chat_pengguna,
		      penerima_pesan_chat_pengguna  : 'bot',
		      isi_pesan_chat_pengguna       : sanitizer.escape(input.isi_pesan_chat_pengguna),
		      waktu_pesan_chat_pengguna     : new Date(dt.now())
		    };

				var anyar = parse.splice(1);
				var objek = anyar.join(',').replace(/,/g, ' ').split();
				var objek2 = objek[0].toUpperCase();
				// var regex = new RegExp(objek, 'gi');
				let sql = "SELECT nama_pegawai,no_handphone_pegawai from data_pegawai where nama_pegawai=?";
				connection.query(sql, objek2,function  (err,rows) {
				if (err){
					throw err;
				}
				else if (rows.length === 1) {
					// console.log(rows);
					console.log("Pesan : '"+data.isi_pesan_chat_pengguna+"' Berhasil dikirim oleh '"+data.pengirim_pesan_chat_pengguna+"' ke '"+data.penerima_pesan_chat_pengguna+"'");
					res.json("Nomor Telepon Atas Nama "+rows[0].nama_pegawai+" : "+rows[0].no_handphone_pegawai);
					console.log(rows[0].nama_pegawai);
				}
				else if (rows.length === 0) {
					console.log("tidak ada");
				}
				else {
					console.log("error!");
				}
				});
			}
			else {
			res.end("Maaf pertanyaan anda tidak dapat dimengerti!");
			}

		}
		// ./RESPONSE

  });
};





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
			res1 = res1;
			break;
		}
		else {
			// console.log("kosa kata tidak ditemukan!");
		}
	}
	// CEK GRUP KOSA KATA
	let sql2 = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata FROM pesan_chat_bot_kosa_kata WHERE kosa_kata_pesan_chat_bot_kosa_kata='"+res1+"'";
	connection.query(sql2, function  (errr,rowss){
		if (errr){ throw errr; }
		var grup_kosa_kata = rowss[0].grup_kosa_kata_pesan_chat_bot_kosa_kata;
		// console.log(rowss[0].grup_kosa_kata_pesan_chat_bot_kosa_kata);
		if (grup_kosa_kata == "nomor telepon"){
			let sql3 = "SELECT * FROM data_pegawai WHERE nama_pegawai!='Administrator'"; //mencari semua kosa kata
			connection.query(sql3,function  (errrr,rowsss){
				if (errrr){ throw errrr; }
				else if (rows.length > 0) {

					for (var i = 0; i < rowsss.length; i++){
						var nip_pegawai = rowsss[i].nip_pegawai;
						// var nama_pegawai = rowsss[i].nama_pegawai;
						var regexxx = new RegExp(nip_pegawai, 'gi');
						var res2 = parse.match(regexxx);
						if (res2) {
							nama_objek = res2;
							var pases1 = JSON.parse('{"nip_pegawai":'+nama_objek+'}');
							break;
						}
						else {
							console.log("Objek nip pencarian tidak ditemukan!");
						}
					}
					for (var i = 0; i < rowsss.length; i++){
						var nama_pegawai = rowsss[i].nama_pegawai;
						var regexxxx = new RegExp(nama_pegawai, 'gi');
						var res3 = parse.match(regexxxx);
						if (res3) {
							var nama_objek2 = res3;
							var g = JSON.stringify(nama_objek2);
							var pases1 = JSON.parse('{"nama_pegawai":'+g+'}');
							break;
						}
						else {
							console.log("Objek nama pencarian tidak ditemukan!");
						}
					}

				}
				if(typeof pases1.nip_pegawai === 'number'){
					console.log("ya ni number");
					console.log(pases1);
				}
				else if (typeof pases1.nama_pegawai[0] === 'string') {
					console.log("ya ni string");
					console.log(pases1);
				}
				else {
					console.log("error");
				}
			});
		}
		else if (grup_kosa_kata == ""){
		}
	});
}
else {
	console.log("tidak ada");
}
});
