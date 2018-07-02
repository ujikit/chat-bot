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
			      if (res1) {
							var sel2 = parse.replace(res1[0], ' ');
							var sel4 = sel2.split(" ");
							array = sel4.filter(function(str) {
						    return /\S/.test(str);
							}); //fungsi menghapus array yg kosong
							var sel5 = array.join().replace(/,/g, ' '); //output : heryani
							var sel6 = sel5.split(" ");
							var sel7 = sel6.splice(1);
							var sel8 = sel7.join().replace(/,/g, ' '); //output : heryani

							// CEK GRUP KOSA KATA
								var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata FROM pesan_chat_bot_kosa_kata WHERE kosa_kata_pesan_chat_bot_kosa_kata='"+res1+"'";
								connection.query(sql, function  (err_grup_kosa_kata,rows_grup_kosa_kata){
									if (err_grup_kosa_kata) throw err_grup_kosa_kata;
									var grup_kosa_kata_final = rows_grup_kosa_kata[0].grup_kosa_kata_pesan_chat_bot_kosa_kata;

								if (parse.match('pegawai')) {
									console.log("ini pegawai");
									var sql = "SELECT nama_pegawai,jabatan_pegawai FROM data_pegawai WHERE nama_pegawai REGEXP '"+sel8+"' order by nama_pegawai asc"; //mencari semua kosa kata
	  							connection.query(sql,function (err_data_pegawai,rows_data_pegawai){
	  								if (err_data_pegawai) throw err_data_pegawai;
										if (rows_data_pegawai.length < 1) { var jabatan_pegawai = null; }
										else if (rows_data_pegawai.length === 1){
											var nama_pegawai = rows_data_pegawai[0].nama_pegawai;
											var jabatan_pegawai = rows_data_pegawai[0].jabatan_pegawai;
										}
										else if (rows_data_pegawai.length > 1){
											console.log("data lebih dari 1");
										}
										// if (jabatan_pegawai == "guru") { var jabatan_guru = "pegawai"; }
										var nama_kolom_yg_dicari			= grup_kosa_kata_final+"_pegawai";
										// var nama_tabel_yang_dicari		= "data_"+jabatan_guru;
										// var nama_kondisi_yang_dicari	= "nama_"+jabatan_guru;
										var selects = [nama_kolom_yg_dicari, nama_pegawai];
									var sql = "SELECT ?? FROM data_pegawai WHERE nama_pegawai = ?";
									connection.query(sql, selects, function  (err_final,rows_final){
										if (err_final) throw err_final;
	                	console.log(JSON.stringify(rows_final));
									});
									});
								}
								else if (parse.match('siswa')){
									console.log("ini siswa");
								}
								else {
									console.log("Pegawai atau Siswa ?");
								}
								});

			        break;
			      }
			      else { console.log("kosa kata tidak ditemukan!"); }
			  }
			}
			else { console.log("tidak ada"); }
			});
		}
  });
};
