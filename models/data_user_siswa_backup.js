let bcrypt = require('bcrypt-nodejs');
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
	database : "man2_chatbot"
});
// ./Connection

exports.dashboard_siswa = function(req, res){
	// let userId = req.session.userId;
	// if(userId == null){
	// 	res.send("Login dulu ya!</b>|"
	// 				 +"|"
	// 				 +"success|"
	// 				 +"plain")
	// 	// res.redirect("/");
	//   return;
	// }
	// var sql 		= "SELECT jabatan_siswa from data_siswa where nis_siswa='"+userId+"'";
	// connection.query(sql, function  (err_final,rows){
	// 	res.render('dashboard.ejs',{session:userId, jabatan:rows[0].jabatan_siswa});
	// })
	var sql 		= "SELECT * from data_siswa where nis_siswa='10889'";
	connection.query(sql, function  (err_final,rows){
		res.render('dashboard.ejs',{session:rows[0].nis_siswa, jabatan:rows[0].jabatan_siswa});
	})
};

// Insert Chat
exports.chat_user_siswa = function(req,res,next){
	let userId = req.session.userId;
  // if(userId == null){
	// 	res.redirect("/");
	// 	return;
  // }
  let input = JSON.parse(JSON.stringify(req.body));
  req.getConnection(function (err, connection) {
    var data = {
      pengirim_pesan_chat_pengguna  	: input.pengirim_pesan_chat_pengguna,
      penerima_pesan_chat_pengguna  	: 'bot',
      isi_pesan_chat_pengguna       	: sanitizer.escape(input.isi_pesan_chat_pengguna),
      isi_pesan_chat_pengguna_choose  : input.isi_pesan_chat_pengguna_choose,
      waktu_pesan_chat_pengguna     	: new Date(dt.now())
    };
		// RESPONSE
		let pesan  = input.isi_pesan_chat_pengguna;
		let json 	 = JSON.stringify(pesan);
		let parse0 =	json.replace(/[!?]/gi, "");
		let parse  = JSON.parse(parse0);

		if (data.isi_pesan_chat_pengguna_choose.length >= 1) {

			var data = data.isi_pesan_chat_pengguna_choose+data.isi_pesan_chat_pengguna;
			var data = data.split(">") // [ 'nama_pegawai', 'pegawai', 'NUR', '2', '1' ]
			var offset = data[4]-1;
			// PEGAWAI
			if (data[1] == "pegawai") {
				var sqls 		= "SELECT "+data[0]+", nip_pegawai FROM data_pegawai INNER JOIN mata_pelajaran on data_pegawai.kd_mata_pelajaran_pegawai = mata_pelajaran.kd_mata_pelajaran WHERE nama_pegawai REGEXP '"+data[2]+"' order by nama_pegawai asc LIMIT 1 OFFSET "+offset;
				connection.query(sqls, function  (err_final,rows){
					if (rows === undefined) {
						res.send("Pilihan tidak ada, ulangi pertanyaanmu :)</b>|"
									 +"|"
									 +"error|"
									 +"")
					}
					else if (data[3] < data[4] || data[4] == 0) {
						res.send("Keluar dari pilihan.</b>|"
									 +"|"
									 +"success|"
									 +"plain")
						// res.send("Mohon maaf, pilihan kamu tidak tersedia.<br><b>Ulangi pertanyaanmu lagi.</b>|"
						// 			 +"|"
						// 			 +"error|"
						// 			 +"")
				 return false;
					}
					else {
						console.log(rows);
						var rows_s = JSON.stringify(rows)
						var rows_s = rows_s.split(":")
						var rows_s = rows_s[1].replace(/[^a-zA-Z0-9\s']/gi, "");
						var rows_s = rows_s.replace(/nippegawai/g, "");
						res.end("<img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[0].nip_pegawai+"' style='width:170px'></img>|"
										+rows_s+"|"
										+"success|"
										+"");
						//jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
						if (data.isi_pesan_chat_pengguna_choose !== null) { return false; }
						return false;
					}
				})
			}
			// SISWA
			else {
				var sqls 		= "SELECT "+data[0]+", nis_siswa FROM data_siswa WHERE nama_siswa REGEXP '"+data[2]+"' order by nama_siswa asc LIMIT 1 OFFSET "+offset;
				connection.query(sqls, function  (err_final,rows){
					if (rows === undefined) { }
					else if (data[3] < data[4] || data[4] == 0) {
						res.send("Keluar dari pilihan.</b>|"
									 +"|"
									 +"success|"
									 +"plain")
						// res.send("Mohon maaf, pilihan kamu tidak tersedia.<br><b>Ulangi pertanyaanmu lagi.</b>|"
						// 			 +"|"
						// 			 +"error|"
						// 			 +"")
					 return false;
					}
					else {
						var rows_s = JSON.stringify(rows)
						var rows_s = rows_s.split(":")
						var rows_s = rows_s[1].replace(/[^a-zA-Z0-9\s']/gi, "");
						var rows_s = rows_s.replace(/nissiswa/gi, "");
						res.end("<img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
										+rows_s+"|"
										+"success|"
										+"");
						//jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
						if (data.isi_pesan_chat_pengguna_choose !== null) { return false; }
						return false;
					}
				})
			}
		}
		else if (data.isi_pesan_chat_pengguna_choose.length == 0) {
			var regex2 = new RegExp(/(pegawai|siswa|bayar|kelas)/, 'gi');
			var res2 = parse.match(regex2);
			// console.log(res2);
			if (res2[0] == "pegawai") { // MENCARI PEGAWAI
				// CEK KOSA KATA
				let sql = "SELECT * from pesan_chat_bot_kosa_kata_pegawai"; //mencari semua kosa kata
				connection.query(sql,function  (err_kosa_kata,rows_kosa_kata_pegawai){
				if (err_kosa_kata) throw err_kosa_kata;
				  for (var i = 0; i < rows_kosa_kata_pegawai.length; i++){
				    var kosa_kata = rows_kosa_kata_pegawai[i].kosa_kata_pesan_chat_bot_kosa_kata_pegawai;
				      var regex = new RegExp(kosa_kata, 'gi');
				      var ress = parse.match(regex);
							if (ress !== null) {
								var res1 = ress;
							}
				  }
        // NOT FOUND 1 dan SUGGEST PEGAWAI
				if (res1 === undefined) {
					var sql = "SELECT kosa_kata_pesan_chat_bot_kosa_kata_pegawai FROM pesan_chat_bot_kosa_kata_pegawai";
				  connection.query(sql, function  (err_rows,rows){
						var g = []
						var h = []
						var ps = parse.split(" ")
						for (var i = 0; i < ps.length; i++) {
						  for (var j = 0; j < rows.length; j++) {
						    var p = ps[i]
						    var k = rows[j].kosa_kata_pesan_chat_bot_kosa_kata_pegawai
						    var r = new RegExp(p, 'gi')
						    var m = k.match(r)
						    if (m !== null && p.length !== 1) { g.push(k) }
						  }
						}
						for (var i = 0; i < g.length; i++) {
							var j = i+1;
							h.push(j+'. '+g[i])
						}

						// HANDLING NULL SUGGEST PEGAWAI
						if (h.length === 0) {
							var sql = "SELECT kosa_kata_pesan_chat_bot_kosa_kata_pegawai FROM pesan_chat_bot_kosa_kata_pegawai";
						  connection.query(sql, function  (err_rows,rows_suggestAll){
								var v = []
								for (var i = 0; i < rows_suggestAll.length; i++) {
									var no = i + 1;
									v.push("<br>"+no+". "+rows_suggestAll[i].kosa_kata_pesan_chat_bot_kosa_kata_pegawai);
								}
								var v = JSON.stringify(v)
								var v = v.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
								res.send("Mohon maaf, kami tidak memahami <b>kata</b> <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
											 +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : <b>"+v+"</b>|"
											 +"error|"
											 +"suggest");
							})
			 			return false;
						}
						// ./HANDLING NULL SUGGEST PEGAWAI

						var g = JSON.stringify(h);
						var h	= g.replace(/[^0-9a-z,.\s]/gi, "")
						var i	= h.replace(/,/gi, "<br>")
						var j= i.split(",");
						var k = j.filter(function(elem, index, self) { return index === self.indexOf(elem); }) //hapus data array yang duplikat
						res.send("Mohon maaf, kami tidak memahami <b>kata</b> <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
			              +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : <br><b>"+k+"</b>|"
			              +"error|"
			              +"suggest");
					})
				}
				else {
					// MENCARI GRUP KOSA KATA (PEGAWAI)
				  var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata_pegawai FROM pesan_chat_bot_kosa_kata_pegawai WHERE kosa_kata_pesan_chat_bot_kosa_kata_pegawai ='"+res1+"'";
				  connection.query(sql, function  (err_grup_kosa_kata,rows_grup_kosa_kata){
				    if (err_grup_kosa_kata) throw err_grup_kosa_kata;
				    var grup_kosa_kata_final = rows_grup_kosa_kata[0].grup_kosa_kata_pesan_chat_bot_kosa_kata_pegawai;

				    var sql = "SELECT nama_pegawai,jabatan_pegawai FROM data_pegawai where nama_pegawai!='Administrator' order by nama_pegawai asc";
				      connection.query(sql,function (err_cari_nama,rows_cari_nama){
				      if (err_cari_nama) throw err_cari_nama;
				      for (var i = 0; i < rows_cari_nama.length; i++) {
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

              // NOT FOUND 3 PEGAWAI
				      if (index === undefined) {
				        res.end("Mohon maaf, <b>nama pengguna</b> yang dicari tidak ditemukan.<br><b>Ulangi pertanyaanmu lagi.</b>|"
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
				              arr.push(nama_fix);
				          } } }

				      // console.log('================= ' +arr+' =================');

				      for (var i = 0; i < arr.length; i++) {
				        var nama_fix2 = arr[i];
				        for (var j = 0; j < rows_cari_nama.length; j++) {
				          var regex5 = new RegExp(nama_fix2, 'gi');
				          var regex6 = rows_cari_nama[j].nama_pegawai.match(regex5);
				          if (regex6 !== null) {
				            if (nama_fix2 === "") { return false }
				            else {
				              var nama_pegawai_yg_dicari	= regex6[0];
				              var selects 								= [nama_pegawai_yg_dicari];
				              var sql 										= "SELECT COUNT(*) from data_pegawai WHERE nama_pegawai REGEXP ?";
				              connection.query(sql, selects, function  (err_final,rows_count_pegawai){
				                var count_pegawai = JSON.stringify(rows_count_pegawai)
				                var count_pegawai = count_pegawai.replace(/[^0-9]+/, "")
				                var count_pegawai = count_pegawai.replace(/[^0-9]+/, "")
				                if (count_pegawai == 1) {
				                  var selects 								= [grup_kosa_kata_final, nama_pegawai_yg_dicari];
				                  var sql 										= "SELECT ??, nip_pegawai FROM data_pegawai INNER JOIN mata_pelajaran on data_pegawai.kd_mata_pelajaran_pegawai = mata_pelajaran.kd_mata_pelajaran WHERE nama_pegawai REGEXP ? order by nama_pegawai asc";
				                  connection.query(sql, selects, function  (err_final,rows){
					                  if (err_final) throw err_final;
					                  var rowss_final = JSON.stringify(rows);
					                  var final				= rowss_final.split(":");
					                  var final				= final[1].replace(/[^a-zA-Z0-9\s']/gi, "");
					                  var final				= final.replace(/nippegawai/gi, "");
														function capital_letter(str){
															str = str.split(" ");
															for (var i = 0, x = str.length; i < x; i++){ str[i] = str[i][0].toUpperCase() + str[i].substr(1); }
															return str.join(" ");
														} // ./READONLY
                            // DATA KOSONG PEGAWAI
														if (final == "null") {
															res.end("<img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[0].nip_pegawai+"' style='width:170px'></img>|"
					                            +"Mohon maaf, data yang kamu minta masih kosong.|"
					                            +"success|"
					                            +"");
															return false
														}
														else {
															res.end("<img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[0].nip_pegawai+"' style='width:170px'></img>|"
						                          +final+"|"
						                          +"success|"
						                          +"");
															return false;
														}
													});// ./rows
				                }
				                else if (count_pegawai > 1) {
				                  var selects = [nama_pegawai_yg_dicari];
				                  var sql 		= "SELECT nama_pegawai, nip_pegawai FROM data_pegawai WHERE nama_pegawai REGEXP ? ORDER BY nama_pegawai asc";
				                  connection.query(sql, selects, function  (err_final,rows){
				                    var nama_nip_pegawai = JSON.stringify(rows)
				                    var nama_nip_baru = []
				                    for (var i = 0; i < rows.length; i++) {
				                      var j = i+1;
				                      nama_nip_baru.push("<br>"+j+". "+rows[i].nama_pegawai+"<br><img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[i].nip_pegawai+"' style='width:70px'></img>")
				                    }
														nama_nip_baru.push("<br>"+(j+1)+" > lebih. <b>Keluar<b>")
														console.log(nama_nip_baru);
				                    var nama_nip_baru = JSON.stringify(nama_nip_baru)
				                    var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
				                    res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
				                            +"Coba pilih nomor yang telah disediakan : |"
				                            +"success|"
				                            +"duplicate_name|"
				                            +grup_kosa_kata_final+'>'+res2+'>'+regex6[0]+'>'+count_pegawai);
				                  })
				                }
												console.log('--> fix  : '+res1); //object
												console.log('--> fix  : '+res2); //object
												console.log('--> nma  : '+regex6[0]);
												console.log('--> idx  : '+index); //memotong kalimat penting menjadi nama yang dicari. misalnya heryani r bla bla bla
												console.log('--> prs  : '+parse);
												console.log('--> prs2 : '+parse2);
												console.log('--> spc1 : '+splice);
												console.log('--> spc2 : '+splice2);
												console.log('--> grp  : '+grup_kosa_kata_final);
				              });
				              return false;
				            } }
				          else {
				          } } }
				    	});
				  	}); // ./grup_kosa_kata_final
				}
				}); // ./pesan_chat_bot_kosa_kata
			} // ./MENCARI PEGAWAI
			else if (res2[0] == "siswa") { // MENCARI siswa
			  // CEK KOSA KATA
			  let sql = "SELECT * from pesan_chat_bot_kosa_kata_siswa"; //mencari semua kosa kata
			  connection.query(sql,function  (err_kosa_kata,rows_kosa_kata_siswa){
			  if (err_kosa_kata) throw err_kosa_kata;
			    for (var i = 0; i < rows_kosa_kata_siswa.length; i++){
			      var kosa_kata = rows_kosa_kata_siswa[i].kosa_kata_pesan_chat_bot_kosa_kata_siswa;
			        var regex = new RegExp(kosa_kata, 'gi');
			        var ress = parse.match(regex);
			        if (ress !== null) {
			          var res1 = ress;
			        }
			    }
			  // NOT FOUND 1 dan SUGGEST SISWA
			  if (res1 === undefined) {
			    var sql = "SELECT kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa";
			    connection.query(sql, function  (err_rows,rows){
			      var g = []
			      var h = []
			      var ps = parse.split(" ")
			      for (var i = 0; i < ps.length; i++) {
			        for (var j = 0; j < rows.length; j++) {
			          var p = ps[i]
			          var k = rows[j].kosa_kata_pesan_chat_bot_kosa_kata_siswa
			          var r = new RegExp(p, 'gi')
			          var m = k.match(r)
			          if (m !== null && p.length !== 1) { g.push(k) }
			        }
			      }
			      for (var i = 0; i < g.length; i++) {
			        var j = i+1;
			        h.push(j+'. '+g[i])
			      }
            // HANDLING NULL SUGGEST SISWA
						if (h.length === 0) {
							var sql = "SELECT kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa";
						  connection.query(sql, function  (err_rows,rows){
								var v = []
								for (var i = 0; i < rows.length; i++) {
									var no = i + 1;
									v.push("<br>"+no+". "+rows[i].kosa_kata_pesan_chat_bot_kosa_kata_siswa);
								}
								var v = JSON.stringify(v)
								var v = v.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
								res.send("Mohon maaf, kami tidak memahami <b>kata</b> <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
											 +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : <b>"+v+"</b>|"
											 +"error|"
											 +"suggest");
							})
			 			return false;
						}
						// ./HANDLING NULL SUGGEST SISWA
			      var g = JSON.stringify(h);
			      var h	= g.replace(/[^0-9a-z,.\s]/gi, "")
			      var i	= h.replace(/,/gi, "<br>")
			      var j= i.split(",");
			      var k = j.filter(function(elem, index, self) { return index === self.indexOf(elem); }) //hapus data array yang duplikat
			      res.send("Mohon maaf, kami tidak memahami <b>kata</b> <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
			              +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : <br><b>"+k+"</b>|"
			              +"error|"
			              +"suggest");
			    })
			  }
			  else {
					// MENCARI GRUP KOSA KATA (SISWA)
			    var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa WHERE kosa_kata_pesan_chat_bot_kosa_kata_siswa ='"+res1+"'";
			    connection.query(sql, function  (err_grup_kosa_kata,rows_grup_kosa_kata){
			      if (err_grup_kosa_kata) throw err_grup_kosa_kata;
			      var grup_kosa_kata_final = rows_grup_kosa_kata[0].grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa;

			      var sql = "SELECT nama_siswa,jabatan_siswa FROM data_siswa where nama_siswa!='Administrator' order by nama_siswa asc";
			        connection.query(sql,function (err_cari_nama,rows_cari_nama){
			        if (err_cari_nama) throw err_cari_nama;
			        for (var i = 0; i < rows_cari_nama.length; i++) {
			          var nama1 = rows_cari_nama[i].nama_siswa;
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
              // NOT FOUND 3 SISWA
			        if (index === undefined) {
			          res.end("Mohon maaf, <b>nama pengguna</b> yang dicari tidak ditemukan.<br><b>Ulangi pertanyaanmu lagi.</b>|"
			                 +"|"
			                 +"error|"
			                 +"")
			          return false;
			        }

			        var arr = [];
			        for (var j = 0; j < rows_cari_nama.length; j++) {
			          var nama3 = rows_cari_nama[j].nama_siswa;
			          for (var k = 0; k < hps_arr_kosong.length; k++) {
			            var tt = hps_arr_kosong.join().replace(/,/g, ' ');
			            var regexx  = new RegExp(tt, 'gi');
			            var regexxx = nama3.match(regexx);
			            if (regexxx === null) {
			                hps_arr_kosong.pop();
			                var nama_fix	= hps_arr_kosong.join().replace(/,/g, ' ');
			                arr.push(nama_fix);
			            } } }

			        // console.log('================= ' +arr+' =================');

			        for (var i = 0; i < arr.length; i++) {
			          var nama_fix2 = arr[i];
			          for (var j = 0; j < rows_cari_nama.length; j++) {
			            var regex5 = new RegExp(nama_fix2, 'gi');
			            var regex6 = rows_cari_nama[j].nama_siswa.match(regex5);
			            if (regex6 !== null) {
			              if (nama_fix2 === "") { return false }
			              else {
			                var selects 								= [regex6[0]];
			                var sql 										= "SELECT COUNT(*) from data_siswa WHERE nama_siswa REGEXP ?";
			                connection.query(sql, selects, function  (err_final,rows_count_siswa){
			                  var count_siswa = JSON.stringify(rows_count_siswa)
			                  var count_siswa = count_siswa.replace(/[^0-9]+/, "")
			                  var count_siswa = count_siswa.replace(/[^0-9]+/, "")
			                  if (count_siswa == 1) {
			                    var selects 								= [grup_kosa_kata_final, regex6[0]];
			                    var sql 										= "SELECT ??, nis_siswa FROM data_siswa WHERE nama_siswa REGEXP ? order by nama_siswa asc";
			                    connection.query(sql, selects, function  (err_final,rows){
				                    if (err_final) throw err_final;
				                    var rowss_final = JSON.stringify(rows);
				                    var final				= rowss_final.split(":");
				                    var final			= final[1].replace(/[^a-zA-Z0-9\s']/gi, "");
				                    var final			= final.replace(/nissiswa/gi, "");
														function capital_letter(str){
															str = str.split(" ");
															for (var i = 0, x = str.length; i < x; i++){ str[i] = str[i][0].toUpperCase() + str[i].substr(1); }
															return str.join(" ");
														} // ./READONLY
	                          // DATA KOSONG SISWA
														if (final == "null") {
															res.end("<img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
					                            +"Mohon maaf, data yang kamu minta masih kosong.|"
					                            +"success|"
					                            +"");
															return false
														}
														else {
															res.end("<img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
															+final+"|"
															+"success|"
															+"");
															return false;
														}
			                    });// ./rows
			                  }
			                  else if (count_siswa > 1) {
			                    var selects = [regex6[0]];
			                    var sql 		= "SELECT nama_siswa, nis_siswa FROM data_siswa WHERE nama_siswa REGEXP ? ORDER BY nama_siswa asc";
			                    connection.query(sql, selects, function  (err_final,rows){
			                      var nama_nis_siswa = JSON.stringify(rows)
			                      var nama_nip_baru = []
			                      for (var i = 0; i < rows.length; i++) {
			                        var j = i+1;
			                        nama_nip_baru.push("<br>"+j+". "+rows[i].nama_siswa+"<br><img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[i].nis_siswa+"' style='width:70px'></img>")
			                      }
														nama_nip_baru.push("<br>"+(j+1)+" > lebih. <b>Keluar<b>")
			                      var nama_nip_baru = JSON.stringify(nama_nip_baru)
			                      var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
			                      res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
			                              +"Coba pilih nomor yang telah disediakan : |"
			                              +"success|"
			                              +"duplicate_name|"
			                              +grup_kosa_kata_final+'>'+res2+'>'+regex6[0]+'>'+count_siswa);
			                    })
			                  }
			                  console.log('--> fix  : '+res1); //object
			                  console.log('--> fix  : '+res2); //object
			                  console.log('--> nma  : '+regex6[0]);
			                  console.log('--> idx  : '+index); //memotong kalimat penting menjadi nama yang dicari. misalnya heryani r bla bla bla
			                  console.log('--> prs  : '+parse);
			                  console.log('--> prs2 : '+parse2);
			                  console.log('--> spc1 : '+splice);
			                  console.log('--> spc2 : '+splice2);
			                  console.log('--> grp  : '+grup_kosa_kata_final);
			                });
			                return false;
			              } }
			            else {
			            } } }
			        });
			      }); // ./grup_kosa_kata_final
			  }
			  }); // ./pesan_chat_bot_kosa_kata
			} // ./MENCARI siswa
			else if (res2[0] == "bayar") { // MENCARI BAYAR
				// CEK KOSA KATA
			  let sql = "SELECT * from pesan_chat_bot_kosa_kata_siswa"; //mencari semua kosa kata
			  connection.query(sql,function  (err_rows,rows){
			  if (err_rows) throw err_rows;
			    for (var i = 0; i < rows.length; i++){
			      var kosa_kata = rows[i].kosa_kata_pesan_chat_bot_kosa_kata_siswa;
			        var regex = new RegExp(kosa_kata, 'gi');
			        var ress = parse.match(regex);
			        if (ress !== null) {
			          var res1 = ress;
			        }
			    }
			  // NOT FOUND 1 dan SUGGEST BAYAR
			  if (res1 === undefined) {
			    var sql = "SELECT kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa";
			    connection.query(sql, function  (err_rows,rows){
			      var g = []
			      var h = []
			      var ps = parse.split(" ")
			      for (var i = 0; i < ps.length; i++) {
			        for (var j = 0; j < rows.length; j++) {
			          var p = ps[i]
			          var k = rows[j].kosa_kata_pesan_chat_bot_kosa_kata_siswa
			          var r = new RegExp(p, 'gi')
			          var m = k.match(r)
			          if (m !== null && p.length !== 1) { g.push(k) }
			        }
			      }
						var g = g.filter(function(elem, index, self) { return index === self.indexOf(elem); }) // hapus data array yang duplikat
			      for (var i = 0; i < g.length; i++) {
			        var j = i+1;
			        h.push(j+'. '+g[i])
			      }
            // HANDLING NULL SUGGEST SISWA
						if (h.length === 0) {
							var sql = "SELECT kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa";
						  connection.query(sql, function  (err_rows,rows){
								var v = []
								for (var i = 0; i < rows.length; i++) {
									var no = i + 1;
									v.push("<br>"+no+". "+rows[i].kosa_kata_pesan_chat_bot_kosa_kata_siswa);
								}
								var v = JSON.stringify(v)
								var v = v.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
								res.send("Mohon maaf, kami tidak memahami <b>kata</b> <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
											 +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : <b>"+v+"</b>|"
											 +"error|"
											 +"suggest");
							})
			 			return false;
						}
						// ./HANDLING NULL SUGGEST SISWA
			      var g = JSON.stringify(h);
			      var h	= g.replace(/[^0-9a-z,.\s]/gi, "")
			      var i	= h.replace(/,/gi, "<br>")
			      var j	= i.split(",");
			      var k = j.filter(function(elem, index, self) { return index === self.indexOf(elem); }) //hapus data array yang duplikat
			      res.send("Mohon maaf, kami tidak memahami <b>kata</b> <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
			              +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : <br><b>"+k+"</b>|"
			              +"error|"
			              +"suggest");
			    })
			  }
			  else {
					// MENCARI GRUP KOSA KATA (BAYAR)
			    var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa WHERE kosa_kata_pesan_chat_bot_kosa_kata_siswa REGEXP '"+res1+"'";
			    connection.query(sql, function  (err_rows,rows){
			      if (err_rows) throw err_rows;
			      var grup_kosa_kata_final = rows[0].grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa;
						if (grup_kosa_kata_final == "*") { //JIKA YANG DICARI DAFTAR PEMBAYARAN
							var selects = [grup_kosa_kata_final]
							var sql = "SELECT * FROM pembayaran INNER JOIN pembayaran_daftar on pembayaran.kd_pembayaran = pembayaran_daftar.kd_pembayaran_daftar where nis_siswa_pembayaran='10888' ORDER BY lunas_pembayaran DESC";
					    connection.query(sql, function  (err_rows,rows){
								var dataArray = []
								for (var i = 0; i < rows.length; i++) {
									var no = i + 1;
									if (rows[i].lunas_pembayaran == "Y") { var y_n = "<button class='waves-effect waves-light green darken-1 btn-small pulse' value='"+rows[i].id_pembayaran+"'>(Lunas)</button>"; }
									else { var y_n = "<button class='waves-effect waves-light red lighten-1 btn-small pulse' value='"+rows[i].id_pembayaran+"'>(Belum Lunas)</button>"; }
									if (rows[i].kekurangan_pembayaran == null || rows[i].kekurangan_pembayaran == '' ) { var kekurangan = "<button class='waves-effect waves-light grey darken-1 btn-small'>Tidak ada.</button>"; }
									else { var kekurangan = "<button class='waves-effect waves-light grey darken-1 btn-small'>Rp. "+rows[i].kekurangan_pembayaran+"</button>" }
									if (rows[i].tanggal_terakhir_pembayaran == null || rows[i].tanggal_terakhir_pembayaran == '' ) { var tanggal_terakhir_pembayaran = "<button class='waves-effect waves-light grey darken-1 btn-small'>Belum Pernah.</button>"; }
									else { var tanggal_terakhir_pembayaran = "<button class='waves-effect waves-light grey darken-1 btn-small'>"+rows[i].tanggal_terakhir_pembayaran+"</button>" }
									// tanggal_terakhir_pembayaran 				= JSON.stringify(rows[i].tanggal_terakhir_pembayaran)
									// tanggal_terakhir_pembayaran 				= tanggal_terakhir_pembayaran.match(/((.*)-\d+)/g)
									// jam_terakhir_pembayaran							=	JSON.stringify(rows[i].tanggal_terakhir_pembayaran)
									// jam_terakhir_pembayaran							= jam_terakhir_pembayaran.match(/(\d(.?):\d+:\d+)/g)
									// var jam_tanggal_terakhir_pembayaran			= "<button class='waves-effect waves-light grey darken-1 btn-small'>Tanggal : "+tanggal_terakhir_pembayaran+" Jam : "+jam_terakhir_pembayaran+"</button>"
									dataArray.push("<br><b>"+no+". "+rows[i].nama_pembayaran_daftar+"</b><br>a). Status : <br><b>"+y_n+"</b><br>b). Kekurangan : <br><b>"+kekurangan+"</b><br>c). Terakhir Bayar : <br><b>"+tanggal_terakhir_pembayaran+"</b><br>");
								}
								var dataArray = JSON.stringify(dataArray)
								var dataArray = dataArray.replace(/[^a-zA-Z0-9.\s+<>:(=)'_/&#-]/g, "")
							res.send("Jika kamu merasa sudah melunasi, namun belum tercatat dibagian <b>Tata Usaha</b>, mohon segera <b>lapor</b> dan membawa <b>bukti pembayaran</b> ke bagian <b>Tata Usaha</b>.|"
				              +"Daftar Tagihan Pembayaran Kamu : <br>"+dataArray+"|"
				              +"success|"
				              +"");

							console.log(rows);
							return false;
						})
						}
						else {
							var sql = "SELECT ?? FROM pembayaran INNER JOIN pembayaran_daftar ON pembayaran.kd_pembayaran = pembayaran_daftar.kd_pembayaran_daftar where nis_siswa_pembayaran='10900' ORDER BY lunas_pembayaran DESC";
					    connection.query(sql, grup_kosa_kata_final, function  (err_rows,rows){
								var sql = "SELECT nama_pegawai,jabatan_pegawai FROM data_pegawai where nama_pegawai!='Administrator' order by nama_pegawai asc";
						      connection.query(sql,function (err_cari_nama,rows){
						      if (err_cari_nama) throw err_cari_nama;
						      for (var i = 0; i < rows.length; i++) {
						        var nama1 = rows[i].nama_pegawai;
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

		              // NOT FOUND 3 PEGAWAI
						      if (index === undefined) {
						        res.end("Mohon maaf, <b>nama pengguna</b> yang dicari tidak ditemukan.<br><b>Ulangi pertanyaanmu lagi.</b>|"
						               +"|"
						               +"error|"
						               +"")
						        return false;
						      }
								})
							})
							return false;
						}
			      }); // ./grup_kosa_kata_final
			  }
			  }); // ./pesan_chat_bot_kosa_kata
			} // ./MENCARI BAYAR
			else if (res2[0] == "kelas") {
				console.log(data.isi_pesan_chat_pengguna);
				// splitRes2	=	res2[0]
				// splitRes2	=	pesan.match(splitRes2)
				// console.log(splitRes2);
				// console.log(splitRes2);
				// var sql = "SELECT kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa WHERE kosa_kata_pesan_chat_bot_kosa_kata_siswa REGEXP '"+res2[0]+"'";
				// connection.query(sql, function  (err_rows,rows){
				// 	console.log(rows);
				// })
			} // ./kelas
      // NOT FOUND 2
			else if (res2[0] === null) {
			  console.log("pegawai atau siswa");
			  res.end("Mohon maaf, ada yang kurang dari pertanyaanmu.<br><b>Ulangi pertanyaanmu lagi.</b>|"
			         +"Kombinasikan <b>pencarianmu</b> dengan <b>kata</b> dibawah ini : <br><b>1.Pegawai</b><br><b>2.Siswa</b><br><b>3.Pembayaran</b><br><b>4.Kelas</b>|"
			         +"error|"
			         +"suggest")
				return false;
			}
		}
  }); // ./req.getConnection(function (err, connection)
};
