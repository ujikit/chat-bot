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
		let pesan  = input.isi_pesan_chat_pengguna;
		let json 	 = JSON.stringify(pesan);
		let parse0 =	json.replace(/[!?]/gi, "");
		let parse  = JSON.parse(parse0);

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
			      var ress = parse.match(regex);
						if (ress !== null) {
							var res1 = ress;
							// console.log(res1);
						}
			  }
				var regex2 = new RegExp(/pegawai/, 'gi');
				var res2 = parse.match(regex2);
				if (res1 !== undefined && res2 !== null) {
					var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata FROM pesan_chat_bot_kosa_kata WHERE kosa_kata_pesan_chat_bot_kosa_kata='"+res1+"'";
					connection.query(sql, function  (err_grup_kosa_kata,rows_grup_kosa_kata){
						if (err_grup_kosa_kata) throw err_grup_kosa_kata;
						var grup_kosa_kata_final = rows_grup_kosa_kata[0].grup_kosa_kata_pesan_chat_bot_kosa_kata;
						var sql = "SELECT nama_pegawai,jabatan_pegawai FROM data_pegawai where nama_pegawai!='Administrator' order by nama_pegawai asc";
							connection.query(sql,function (err_cari_nama,rows_cari_nama){
							if (err_cari_nama) throw err_cari_nama;
							for (var i = 0; i < rows_cari_nama.length; i++) {
								// console.log(i+'. '+rows_cari_nama[i].nama_pegawai);
								var nama1 = rows_cari_nama[i].nama_pegawai;
								var nama4 = nama1.split(" ");
								var nama2 = new RegExp(nama4[0], 'gi');
								var match	= parse.match(nama2);
								if (match !== null) {
									var parse2= parse.split(" ");
									var index = parse2.indexOf(match[0]); //nomor letak array heryani
									var splice = parse2.splice(index);
									var hps_arr_kosong = splice.filter(function(str) {
								    return /\S/.test(str);
									}); //fungsi menghapus array yg kosong : BENTUK OBJECT
									var splice2= hps_arr_kosong.join().replace(/,/g, ' ');
									hps_arr_kosong.push("null");
								}
							}

							console.log('--> fix  : '+res1); //object
							console.log('--> fix  : '+res2); //object
							console.log('--> fix  : '+index); //memotong kalimat penting menjadi nama yang dicari. misalnya heryani r bla bla bla
							console.log('--> prs  : '+parse);
							console.log('--> prs2 : '+parse2);
							console.log('--> spc1 : '+splice);
							console.log('--> spc2 : '+splice2);
							console.log('--> hps  : '+hps_arr_kosong);
							// console.log('--> hps  : '+hps_arr_kosong.length);

              if (index === undefined) {
                res.end("Mohon maaf, <b>nama pengguna</b> yang dicari tidak ditemukan.</br><b>Ulangi pertanyaanmu lagi.</b>|"
											 +"|"
											 +"error|"
										   +"")
                return false;
              }

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
											// console.log(nama_fix);
											arr.push(nama_fix);
									} } }

							// console.log('================= ' +arr+' =================');

							for (var i = 0; i < arr.length; i++) {
								// console.log(rows_cari_nama[i].nama_pegawai);
								var nama_fix2 = arr[i];
								// console.log('============= '+nama_fix2+' =============');
								for (var j = 0; j < rows_cari_nama.length; j++) {
									// console.log(nama_fix2+' - '+rows_cari_nama[j].nama_pegawai);
									var regex5 = new RegExp(nama_fix2, 'gi');
									var regex6 = rows_cari_nama[j].nama_pegawai.match(regex5);
									if (regex6 !== null) {
										if (nama_fix2 === "") { return false }
										else {
											var res3 										= rows_cari_nama[j].nama_pegawai;
											var nama_pegawai_yg_dicari	= res3;
											var selects 								= [nama_pegawai_yg_dicari];
											var sql 										= "SELECT COUNT(*) from data_pegawai WHERE nama_pegawai REGEXP ?";
											connection.query(sql, selects, function  (err_final,rows_count_pegawai){
												var count_pegawai = JSON.stringify(rows_count_pegawai)
												var count_pegawai = count_pegawai.replace(/[^0-9]+/, "")
												var count_pegawai = count_pegawai.replace(/[^0-9]+/, "")
												if (count_pegawai == 1) {
													if (grup_kosa_kata_final == "nama_mata_pelajaran") { var nama_kolom_yg_dicari		= grup_kosa_kata_final; }
													else if (grup_kosa_kata_final !== "nama_mata_pelajaran") { var nama_kolom_yg_dicari		= grup_kosa_kata_final+'_pegawai'; }
													var selects 								= [nama_kolom_yg_dicari, nama_pegawai_yg_dicari];
													var sql 										= "SELECT ?? FROM data_pegawai inner join mata_pelajaran on data_pegawai.kd_mata_pelajaran_pegawai = mata_pelajaran.kd_mata_pelajaran WHERE nama_pegawai = ? order by nama_pegawai asc";
													connection.query(sql, selects, function  (err_final,rows_final){
													if (err_final) throw err_final;
													var rowss_final = JSON.stringify(rows_final);
													var final				= rowss_final.split(":");
													var final2			= final[1].replace(/[^a-zA-Z0-9\s']/gi, "");

													function capital_letter(str){
												    str = str.split(" ");
												    for (var i = 0, x = str.length; i < x; i++){ str[i] = str[i][0].toUpperCase() + str[i].substr(1); }
												    return str.join(" ");
													} // ./READONLY

													res.end("|"
																	+final2+"|"
																	+"success|"
																	+"");
													});// ./rows_final
												}
												else if (count_pegawai > 1) {
													var selects = [nama_pegawai_yg_dicari];
													var sql 		= "SELECT nama_pegawai, nip_pegawai FROM data_pegawai WHERE nama_pegawai REGEXP ? ORDER BY nama_pegawai asc";
													connection.query(sql, selects, function  (err_final,rows_nama_nip_pegawai){
														var nama_nip_pegawai = JSON.stringify(rows_nama_nip_pegawai)
														var nama_nip_baru = []
														for (var i = 0; i < rows_nama_nip_pegawai.length; i++) {
															var j = i+1;
															// nama_nip_baru.push(j+". <button href='#modal-tampil-foto' value='"+rows_nama_nip_pegawai[i].nip_pegawai+"' class='waves-effect waves-light btn modal-trigger'>"+rows_nama_nip_pegawai[i].nama_pegawai+"</button>&"+rows_nama_nip_pegawai[i].nip_pegawai+"&")
															nama_nip_baru.push(j+". <a href='#modal-tampil-foto' value='"+rows_nama_nip_pegawai[i].nip_pegawai+"' class='waves-effect waves-light btn modal-trigger button-tampil-foto'>"+rows_nama_nip_pegawai[i].nama_pegawai+'</a>')

														}
														var nama_nip_baru = JSON.stringify(nama_nip_baru)
														var nama_nip_baru = nama_nip_baru.replace(/,/g, "<br>")
														var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>='/&#-]/g, "")
														console.log(nama_nip_baru);
														res.end("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
																		+"Pilih nomor yang kamu maksud : |"
																		+"success|"
																		+"duplicate_name|");
													})
												}
											});
											return false;
										} }
									else {
									} } }
						});
					}); // ./grup_kosa_kata_final
				}
				else if (res1 === undefined && res2 !== null) {
					var sql 		= "SELECT kosa_kata_pesan_chat_bot_kosa_kata from pesan_chat_bot_kosa_kata";
					connection.query(sql, function  (err_final,rows_final){
						var arr 	= [];
						var arrK	= [];
						var arrKK	= [];
						for (var i = 0; i < rows_final.length; i++) { arr.push(rows_final[i].kosa_kata_pesan_chat_bot_kosa_kata) }
						var parsee = parse.split(" ");
						for (var i = 0; i < arr.length; i++) {
							for (var j = 0; j < parsee.length; j++) {
								var a = arr[i];
								var b = parsee[j];
						    var c = a.match(b);
								if (c) { arrK.push(b) }
							}
						}
						for (var i = 0; i < arrK.length; i++) { if (arrK[i].length !== 1) { arrKK.push(arrK[i]) } } //looping untuk hapus array data yang cuman 1 string length
						var arrKKK = arrKK.filter(function(elem, index, self) { return index === self.indexOf(elem); }) //hapus data array yang duplikat
						var suggest = arrKKK;
						if (suggest.length !== 1) {
						  var suggest = JSON.stringify(suggest);
						  var suggest = suggest.replace(/[^a-zA-Z0-9\s',]/gi, "");
						  var suggest = suggest.replace(/,/gi, "|");
						}
						var sql 		= "SELECT kosa_kata_pesan_chat_bot_kosa_kata from pesan_chat_bot_kosa_kata where kosa_kata_pesan_chat_bot_kosa_kata REGEXP ? GROUP BY grup_kosa_kata_pesan_chat_bot_kosa_kata";
						connection.query(sql, suggest, function  (err_final,rows_finals){
							console.log(rows_finals);
							var arrKKKK = [];
							for (var i = 0; i < rows_finals.length; i++) {
								var j = i+1;
								arrKKKK.push(j+'. '+rows_finals[i].kosa_kata_pesan_chat_bot_kosa_kata)
							}
							var arrKKKK = JSON.stringify(arrKKKK);
							var arrKKKK = arrKKKK.replace(/[^a-zA-Z0-9\s'.,]/gi, "");
						  var arrKKKK = arrKKKK.replace(/,/gi, "</br>");
							// console.log(arrKKKK);
							res.send("Mohon maaf, kami tidak memahami <b>kata</b> <b>kunci</b> yang dicari.</br><b>Ulangi pertanyaanmu lagi.</b>|"
											+"Mungkin <b>kata kunci</b> yang kamu cari ada disini : </br><b>"+arrKKKK+"</b>|"
											+"error|"
										 	+"suggest");
							// console.log(suggest);
						})
					})
				}
				else if (res1 !== undefined && res2 === null) {
					console.log("pegawai atau siswa");
					res.end("Mohon maaf, pengguna yang dicari <b>pegawai</b> atau <b>siswa</b>?</br><b>Ulangi pertanyaanmu lagi.</b>|"
								 +"|"
								 +"error|"
							 	 +"")
				}
				else if (res1 === undefined && res2 === null) {
					console.log("kata kunci & pegawai / siswa SALAH");
					res.end("Mohon maaf, kami tidak memahami <b>kata</b> <b>kunci</b> yang dicari dan <b>pegawai</b> atau <b>siswa</b>.</br><b>Ulangi pertanyaanmu lagi.</b>|"
								 +"Pastikan kamu sudah <b>membaca panduan penggunaan</b> ya!|"
								 +"error|"
								 +"suggest")
				}
				else {
					console.log("Tidak terdapat kata kunci subjek dan pegawai atau siswa");
					res.end("Mohon maaf, kami tidak memahami permintaan yang kamu cari</br><b>Ulangi pertanyaanmu lagi.</b>|"
								 +"Pastikan kamu sudah <b>membaca panduan penggunaan</b> ya!|"
								 +"error|"
								 +"suggest")
			}
			}
			else { console.log("tidak ada"); }
		}); // ./pesan_chat_bot_kosa_kata
		}
  }); // ./req.getConnection(function (err, connection)
};
