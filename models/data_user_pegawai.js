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
exports.chat_user_pegawai = function(req,res,next){
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
			res.json("Maksudnya '"+pesan+"' apa? \nMasukan ulang kata kunci yang lebih spesifik.");
		}
		else {
			// Cek kosa kata
			let sql = "SELECT * from pesan_chat_bot_kosa_kata"; //mencari semua kosa kata
			connection.query(sql,function  (err_kosa_kata,rows_kosa_kata){
			if (err_kosa_kata) throw err_kosa_kata;
			 if (rows_kosa_kata.length > 0) {
			  for (var i = 0; i < rows_kosa_kata.length; i++){
			    var kosa_kata = rows_kosa_kata[i].kosa_kata_pesan_chat_bot_kosa_kata;
			      var regex = new RegExp(kosa_kata, 'gi');
			      var res1 = parse.match(regex);
						var regex2 = new RegExp(/pegawai/, 'gi');
			      var res2 = parse.match(regex2);
			      if (res1) {

							var sql = "SELECT nama_pegawai,jabatan_pegawai FROM data_pegawai where nama_pegawai!='Administrator' order by nama_pegawai asc";
								connection.query(sql,function (err_cari_nama,rows_cari_nama){
								if (err_cari_nama) throw err_cari_nama;
								for (var i = 0; i < rows_cari_nama.length; i++) {
									// console.log(i+'. '+rows_cari_nama[i].nama_pegawai);
									var nama1 = rows_cari_nama[i].nama_pegawai;

									var nama2 = new RegExp(nama1, 'gi');
									var match	= parse.match(nama2);
									if (match !== null) {
										var parse2= parse.split(" ");
										var index = parse2.indexOf(match[0]); //nomor letak array heryani
										var splice = parse2.splice(index);
										hps_arr_kosong = splice.filter(function(str) {
									    return /\S/.test(str);
										}); //fungsi menghapus array yg kosong : BENTUK OBJECT
										var splice2= hps_arr_kosong.join().replace(/,/g, ' ');
									}
								}

								// console.log('--> fix  : '+res1); //object
								// console.log('--> fix  : '+res2); //object
								// console.log('--> fix  : '+index);
								// console.log('--> prs2 :'+parse2);
								// console.log('--> hps  : '+hps_arr_kosong);
								// console.log('--> spc2 : '+splice2);

								var arr = [];
								for (var j = 0; j < rows_cari_nama.length; j++) {
									var nama3 = rows_cari_nama[j].nama_pegawai;
									for (var k = 0; k < hps_arr_kosong.length; k++) {
										var tt = hps_arr_kosong.join().replace(/,/g, ' ');
										var regexx  = new RegExp(tt, 'gi');
										var regexxx = nama3.match(regexx);
										if (regexxx === null) {
												hps_arr_kosong.pop();
												var nama_fix	= hps_arr_kosong.join().replace(/,/g, ' ');
												console.log(nama_fix);
												arr.push(nama_fix);
										}
									}
									// console.log(nama3);
								}
								console.log(arr);

							});
			        break;
			      }
			      else {
							// console.log("kosa kata tidak ditemukan!");
						}
			  }
			}
			else { console.log("tidak ada"); }
			});
		}
  });
};
