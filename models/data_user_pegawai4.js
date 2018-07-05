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

exports.dashboard_pegawai = function(req, res){
	let userId = req.session.userId;
	// if(userId == null){
	//   res.redirect("/");
	//   return;
	// }
	var sql = "SELECT * FROM pesan_chat_pengguna WHERE pengirim_pesan_chat_pengguna='"+userId+"' or penerima_pesan_chat_pengguna='"+userId+"' order by waktu_pesan_chat_pengguna asc";
	req.getConnection(function (err, connection) {
	 connection.query(sql, function (err, results) {
	   res.render('pegawai/dashboard_pegawai.ejs',{data:results, session:userId});
		 // res.writeHead(200, {'Context-Type' : 'application/json'});
		 // res.end(JSON.stringify(results));
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
      pengirim_pesan_chat_pengguna  	: input.pengirim_pesan_chat_pengguna,
      penerima_pesan_chat_pengguna  	: 'bot',
      isi_pesan_chat_pengguna       	: sanitizer.escape(input.isi_pesan_chat_pengguna),
      isi_pesan_chat_pengguna_choose  : input.isi_pesan_chat_pengguna_choose,
      waktu_pesan_chat_pengguna     	: new Date(dt.now())
    };
    // connection.query("INSERT INTO pesan_chat_pengguna set ?",data,function  (err,rows) {
  	// if (err) throw err;
		// console.log("Pesan : '"+data.isi_pesan_chat_pengguna+"' Berhasil dikirim oleh '"+data.pengirim_pesan_chat_pengguna+"' ke '"+data.penerima_pesan_chat_pengguna+"'");
		// res.json('berhasil menyimpan, ini balasan bot');
    // });
		// return false;
		// RESPONSE
		let pesan  = input.isi_pesan_chat_pengguna;
		let json 	 = JSON.stringify(pesan);
		let parse0 =	json.replace(/[!?]/gi, "");
		let parse  = JSON.parse(parse0);

		if (data.isi_pesan_chat_pengguna_choose == null) {
			if (parse.length === 1){ console.log("maksudnya?"); res.json("Maksudnya '"+pesan+"' apa? \nMasukan ulang kata kunci yang lebih spesifik."); }
		}
		else {
      // CEK DUPLIKAT NAMA DAN PILIH NAMA YANG DIMAKSUD
			if (data.isi_pesan_chat_pengguna_choose !== null) {
				var data = data.isi_pesan_chat_pengguna_choose+data.isi_pesan_chat_pengguna;
				var data = data.split(">")
				var offset = data[4]-1;
				if (data[1] == "pegawai") {
					var sqls 		= "SELECT "+data[0]+" FROM data_pegawai inner join mata_pelajaran on data_pegawai.kd_mata_pelajaran_pegawai = mata_pelajaran.kd_mata_pelajaran WHERE nama_pegawai REGEXP '"+data[2]+"' order by nama_pegawai asc LIMIT 1 OFFSET "+offset;
					connection.query(sqls, function  (err_final,rows){
						if (rows === undefined) { }
						else if (data[3] < data[4] || data[4] == 0) {
							res.send("Mohon maaf, pilihan kamu tidak tersedia.</br><b>Ulangi pertanyaanmu lagi.</b>|"
										 +"|"
										 +"error|"
										 +"")
										 return false;
						}
						else {
							var rows = JSON.stringify(rows)
							var rows = rows.split(":")
							var rows = rows[1].replace(/[^a-zA-Z0-9\s']/gi, "");
							res.end("|"
											+rows+"|"
											+"success|"
											+"");
							//jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
							if (data.isi_pesan_chat_pengguna_choose !== null) { return false; }
						}
					})
				}
				else {
					var sqls 		= "SELECT "+data[0]+" FROM data_siswa WHERE nama_siswa REGEXP '"+data[2]+"' order by nama_siswa asc LIMIT 1 OFFSET "+offset;
					connection.query(sqls, function  (err_final,rows){
					  if (rows === undefined) { }
					  else if (data[3] < data[4] || data[4] == 0) {
					    res.send("Mohon maaf, pilihan kamu tidak tersedia.</br><b>Ulangi pertanyaanmu lagi.</b>|"
					           +"|"
					           +"error|"
					           +"")
					           return false;
					  }
					  else {
					    var rows = JSON.stringify(rows)
					    var rows = rows.split(":")
					    var rows = rows[1].replace(/[^a-zA-Z0-9\s']/gi, "");
					    res.end("|"
					            +rows+"|"
					            +"success|"
					            +"");
					    //jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
					    if (data.isi_pesan_chat_pengguna_choose !== null) { return false; }
					  }
					})
				}
			}

			var regex2 = new RegExp(/(pegawai|siswa)/, 'gi');
			var res2 = parse.match(regex2);
			if (res2 == "pegawai") { // MENCARI PEGAWAI
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
								// console.log(res1);
							}
				  }
        // KATA KUNCI TIDAK DITEMUKAN dan SUGGEST
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
						var g = JSON.stringify(h);
						console.log(g);
						var h	= g.replace(/[^0-9a-z,.\s]/gi, "")
						var i	= h.replace(/,/gi, "<br>")
						var j= i.split(",");
						var k = j.filter(function(elem, index, self) { return index === self.indexOf(elem); }) //hapus data array yang duplikat
						res.send("Mohon maaf, kami tidak memahami <b>kata</b> <b>pertanyaan</b> yang kamu cari.</br><b>Ulangi pertanyaanmu lagi.</b>|"
			              +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : </br><b>"+k+"</b>|"
			              +"error|"
			              +"suggest");
					})
				}
				else {
					// MENCARI GRUP KOSA KATA
				  var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata_pegawai FROM pesan_chat_bot_kosa_kata_pegawai WHERE kosa_kata_pesan_chat_bot_kosa_kata_pegawai ='"+res1+"'";
				  connection.query(sql, function  (err_grup_kosa_kata,rows_grup_kosa_kata){
				    if (err_grup_kosa_kata) throw err_grup_kosa_kata;
				    var grup_kosa_kata_final = rows_grup_kosa_kata[0].grup_kosa_kata_pesan_chat_bot_kosa_kata_pegawai;

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
				        var nama_fix2 = arr[i];
				        // console.log('============= '+nama_fix2+' =============');
				        for (var j = 0; j < rows_cari_nama.length; j++) {
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

				                  var selects 								= [grup_kosa_kata_final, nama_pegawai_yg_dicari];
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
				                      nama_nip_baru.push("<br>"+j+". "+rows_nama_nip_pegawai[i].nama_pegawai+"<br><img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows_nama_nip_pegawai[i].nip_pegawai+"' style='width:70px'></img>")

				                    }
				                    var nama_nip_baru = JSON.stringify(nama_nip_baru)
				                    // var nama_nip_baru = nama_nip_baru.replace(/[^0-9.\s\A-Z,]/g, "")
				                    var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")

				                    // res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
				                    // 				+"Coba masukan ulang perintah : <br><b>"+parse+" ke (pilihan nomor diatas)</b><i style='color:red' class='tiny material-icons'>info</i>|"
				                    // 				+"success|"
				                    // 				+"duplicate_name|");
				                    res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
				                            +"Coba pilih nomor yang telah disediakan : |"
				                            +"success|"
				                            +"duplicate_name|"
				                            +grup_kosa_kata_final+'>'+res2+'>'+res3+'>'+count_pegawai);



				                  })
				                }
												console.log('--> fix  : '+res1); //object
												console.log('--> fix  : '+res2); //object
												console.log('--> nma  : '+res3);
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
			if (res2 == "siswa") { // MENCARI siswa
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
			          // console.log(res1);
			        }
			    }
			  // KATA KUNCI TIDAK DITEMUKAN dan SUGGEST
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
			      var g = JSON.stringify(h);
			      console.log(g);
			      var h	= g.replace(/[^0-9a-z,.\s]/gi, "")
			      var i	= h.replace(/,/gi, "<br>")
			      var j= i.split(",");
			      var k = j.filter(function(elem, index, self) { return index === self.indexOf(elem); }) //hapus data array yang duplikat
			      res.send("Mohon maaf, kami tidak memahami <b>kata</b> <b>pertanyaan</b> yang kamu cari.</br><b>Ulangi pertanyaanmu lagi.</b>|"
			              +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : </br><b>"+k+"</b>|"
			              +"error|"
			              +"suggest");
			    })
			  }
			  else {
			    // MENCARI GRUP KOSA KATA
			    var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa WHERE kosa_kata_pesan_chat_bot_kosa_kata_siswa ='"+res1+"'";
			    connection.query(sql, function  (err_grup_kosa_kata,rows_grup_kosa_kata){
			      if (err_grup_kosa_kata) throw err_grup_kosa_kata;
			      var grup_kosa_kata_final = rows_grup_kosa_kata[0].grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa;

			      var sql = "SELECT nama_siswa,jabatan_siswa FROM data_siswa where nama_siswa!='Administrator' order by nama_siswa asc";
			        connection.query(sql,function (err_cari_nama,rows_cari_nama){
			        if (err_cari_nama) throw err_cari_nama;
			        for (var i = 0; i < rows_cari_nama.length; i++) {
			          // console.log(i+'. '+rows_cari_nama[i].nama_siswa);
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

			        if (index === undefined) {
			          res.end("Mohon maaf, <b>nama pengguna</b> yang dicari tidak ditemukan.</br><b>Ulangi pertanyaanmu lagi.</b>|"
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
			                // console.log(nama_fix);
			                arr.push(nama_fix);
			            } } }

			        // console.log('================= ' +arr+' =================');

			        for (var i = 0; i < arr.length; i++) {
			          var nama_fix2 = arr[i];
			          // console.log('============= '+nama_fix2+' =============');
			          for (var j = 0; j < rows_cari_nama.length; j++) {
			            var regex5 = new RegExp(nama_fix2, 'gi');
			            var regex6 = rows_cari_nama[j].nama_siswa.match(regex5);
			            if (regex6 !== null) {
			              if (nama_fix2 === "") { return false }
			              else {
			                var res3 										= rows_cari_nama[j].nama_siswa;
			                var nama_siswa_yg_dicari	= res3;
			                var selects 								= [nama_siswa_yg_dicari];
			                var sql 										= "SELECT COUNT(*) from data_siswa WHERE nama_siswa REGEXP ?";
			                connection.query(sql, selects, function  (err_final,rows_count_siswa){
			                  var count_siswa = JSON.stringify(rows_count_siswa)
			                  var count_siswa = count_siswa.replace(/[^0-9]+/, "")
			                  var count_siswa = count_siswa.replace(/[^0-9]+/, "")
			                  if (count_siswa == 1) {

			                    var selects 								= [grup_kosa_kata_final, nama_siswa_yg_dicari];
			                    var sql 										= "SELECT ?? FROM data_siswa WHERE nama_siswa = ? order by nama_siswa asc";
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
			                  else if (count_siswa > 1) {
			                    var selects = [nama_siswa_yg_dicari];
			                    var sql 		= "SELECT nama_siswa, nis_siswa FROM data_siswa WHERE nama_siswa REGEXP ? ORDER BY nama_siswa asc";
			                    connection.query(sql, selects, function  (err_final,rows_nama_nip_siswa){
			                      var nama_nip_siswa = JSON.stringify(rows_nama_nip_siswa)
			                      var nama_nip_baru = []
			                      for (var i = 0; i < rows_nama_nip_siswa.length; i++) {
			                        var j = i+1;
			                        // nama_nip_baru.push(j+". <button href='#modal-tampil-foto' value='"+rows_nama_nip_siswa[i].nip_siswa+"' class='waves-effect waves-light btn modal-trigger'>"+rows_nama_nip_siswa[i].nama_siswa+"</button>&"+rows_nama_nip_siswa[i].nip_siswa+"&")
			                        nama_nip_baru.push("<br>"+j+". "+rows_nama_nip_siswa[i].nama_siswa+"<br><img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows_nama_nip_siswa[i].nip_siswa+"' style='width:70px'></img>")

			                      }
			                      var nama_nip_baru = JSON.stringify(nama_nip_baru)
			                      // var nama_nip_baru = nama_nip_baru.replace(/[^0-9.\s\A-Z,]/g, "")
			                      var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")

			                      // res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
			                      // 				+"Coba masukan ulang perintah : <br><b>"+parse+" ke (pilihan nomor diatas)</b><i style='color:red' class='tiny material-icons'>info</i>|"
			                      // 				+"success|"
			                      // 				+"duplicate_name|");
			                      res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
			                              +"Coba pilih nomor yang telah disediakan : |"
			                              +"success|"
			                              +"duplicate_name|"
			                              +grup_kosa_kata_final+'>'+res2+'>'+res3+'>'+count_siswa);



			                    })
			                  }
			                  console.log('--> fix  : '+res1); //object
			                  console.log('--> fix  : '+res2); //object
			                  console.log('--> nma  : '+res3);
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
					// if (res2 == "siswa") {
					//   // MENCARI GRUP KOSA KATA
					//   var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa WHERE kosa_kata_pesan_chat_bot_kosa_kata_siswa='"+res1+"'";
					//   connection.query(sql, function  (err_grup_kosa_kata_siswa,rows_grup_kosa_kata_siswa){
					//     if (err_grup_kosa_kata_siswa) throw err_grup_kosa_kata_siswa;
					//     var grup_kosa_kata_siswa_final = rows_grup_kosa_kata_siswa[0].grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa;
          //
					//     var sql = "SELECT nama_siswa FROM data_siswa order by nama_siswa asc";
					//       connection.query(sql,function (err_cari_nama,rows_cari_nama){
					//       if (err_cari_nama) throw err_cari_nama;
					//       for (var i = 0; i < rows_cari_nama.length; i++) {
					//         // console.log(i+'. '+rows_cari_nama[i].nama_siswa);
					//         var nama1 = rows_cari_nama[i].nama_siswa;
					//         var nama4 = nama1.split(" ");
					//         var nama2 = new RegExp(nama4[0], 'gi');
					//         var match	= parse.match(nama2);
					//         if (match !== null) {
					//           var parse2= parse.split(" ");
					//           var index = parse2.indexOf(match[0]); //nomor letak array heryani
					//           var splice = parse2.splice(index);
					//           var hps_arr_kosong = splice.filter(function(str) {
					//             return /\S/.test(str);
					//           }); //fungsi menghapus array yg kosong : BENTUK OBJECT
					//           var splice2= hps_arr_kosong.join().replace(/,/g, ' ');
					//           hps_arr_kosong.push("null");
					//         }
					//       }
          //
					//       console.log('--> fix  : '+res1); //object
					//       console.log('--> fix  : '+res2); //object
					//       console.log('--> nma  : '+res3);
					//       console.log('--> idx  : '+index); //memotong kalimat penting menjadi nama yang dicari. misalnya heryani r bla bla bla
					//       console.log('--> prs  : '+parse);
					//       console.log('--> prs2 : '+parse2);
					//       console.log('--> spc1 : '+splice);
					//       console.log('--> spc2 : '+splice2);
					//       console.log('--> grp  : '+grup_kosa_kata_siswa_final);
          //
					//       if (index === undefined) {
					//         res.end("Mohon maaf, <b>nama pengguna</b> yang dicari tidak ditemukan.</br><b>Ulangi pertanyaanmu lagi.</b>|"
					//                +"|"
					//                +"error|"
					//                +"")
					//         return false;
					//       }
          //
					//       var arr = [];
					//       for (var j = 0; j < rows_cari_nama.length; j++) {
					//         var nama3 = rows_cari_nama[j].nama_siswa;
					//         for (var k = 0; k < hps_arr_kosong.length; k++) {
					//           var tt = hps_arr_kosong.join().replace(/,/g, ' ');
					//           var regexx  = new RegExp(tt, 'gi');
					//           var regexxx = nama3.match(regexx);
					//           if (regexxx === null) {
					//               hps_arr_kosong.pop();
					//               var nama_fix	= hps_arr_kosong.join().replace(/,/g, ' ');
					//               // console.log(nama_fix);
					//               arr.push(nama_fix);
					//           } } }
          //
					//       // console.log('================= ' +arr+' =================');
          //
					//       for (var i = 0; i < arr.length; i++) {
					//         var nama_fix2 = arr[i];
					//         // console.log('============= '+nama_fix2+' =============');
					//         for (var j = 0; j < rows_cari_nama.length; j++) {
					//           var regex5 = new RegExp(nama_fix2, 'gi');
					//           var regex6 = rows_cari_nama[j].nama_siswa.match(regex5);
					//           if (regex6 !== null) {
					//             if (nama_fix2 === "") { return false }
					//             else {
					//               var res3 										= rows_cari_nama[j].nama_siswa;
					//               var nama_siswa_yg_dicari	= res3;
					//               var selects 								= [nama_siswa_yg_dicari];
					//               var sql 										= "SELECT COUNT(*) from data_siswa WHERE nama_siswa REGEXP ?";
					//               connection.query(sql, selects, function  (err_final,rows_count_siswa){
					//                 var count_siswa = JSON.stringify(rows_count_siswa)
					//                 var count_siswa = count_siswa.replace(/[^0-9]+/, "")
					//                 var count_siswa = count_siswa.replace(/[^0-9]+/, "")
					//                 if (count_siswa == 1) {
          //
					//                   var selects 								= [grup_kosa_kata_siswa_final, nama_siswa_yg_dicari];
					//                   var sql 										= "SELECT ?? FROM data_siswa WHERE nama_siswa = ? order by nama_siswa asc";
					//                   connection.query(sql, selects, function  (err_final,rows_final){
					//                   if (err_final) throw err_final;
					//                   var rowss_final = JSON.stringify(rows_final);
					//                   var final				= rowss_final.split(":");
					//                   var final2			= final[1].replace(/[^a-zA-Z0-9\s']/gi, "");
          //
					//                   function capital_letter(str){
					//                     str = str.split(" ");
					//                     for (var i = 0, x = str.length; i < x; i++){ str[i] = str[i][0].toUpperCase() + str[i].substr(1); }
					//                     return str.join(" ");
					//                   } // ./READONLY
          //
					//                   res.end("|"
					//                           +final2+"|"
					//                           +"success|"
					//                           +"");
					//                   });// ./rows_final
					//                 }
					//                 else if (count_siswa > 1) {
					//                   var selects = [nama_siswa_yg_dicari];
					//                   var sql 		= "SELECT nama_siswa, nis_siswa FROM data_siswa WHERE nama_siswa REGEXP ? ORDER BY nama_siswa asc";
					//                   connection.query(sql, selects, function  (err_final,rows_nama_nis_siswa){
					//                     var nama_nis_siswa = JSON.stringify(rows_nama_nis_siswa)
					//                     var nama_nis_baru = []
					//                     for (var i = 0; i < rows_nama_nis_siswa.length; i++) {
					//                       var j = i+1;
					//                       // nama_nis_baru.push(j+". <button href='#modal-tampil-foto' value='"+rows_nama_nis_siswa[i].nis_siswa+"' class='waves-effect waves-light btn modal-trigger'>"+rows_nama_nis_siswa[i].nama_siswa+"</button>&"+rows_nama_nis_siswa[i].nis_siswa+"&")
					//                       nama_nis_baru.push("<br>"+j+". "+rows_nama_nis_siswa[i].nama_siswa+"<br><img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows_nama_nis_siswa[i].nis_siswa+"' style='width:70px'></img>")
          //
					//                     }
					//                     var nama_nis_baru = JSON.stringify(nama_nis_baru)
					//                     // var nama_nis_baru = nama_nis_baru.replace(/[^0-9.\s\A-Z,]/g, "")
					//                     var nama_nis_baru = nama_nis_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
          //
					//                     // res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nis_baru+"|"
					//                     // 				+"Coba masukan ulang perintah : <br><b>"+parse+" ke (pilihan nomor diatas)</b><i style='color:red' class='tiny material-icons'>info</i>|"
					//                     // 				+"success|"
					//                     // 				+"duplicate_name|");
					//                     res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nis_baru+"|"
					//                             +"Coba pilih nomor yang telah disediakan : |"
					//                             +"success|"
					//                             +"duplicate_name|"
					//                             +grup_kosa_kata_siswa_final+'>'+res2+'>'+res3+'>'+count_siswa);
          //
					//                   })
					//                 }
					//               });
					//               return false;
					//             } }
					//           else {
					//           } } }
					//     });
					//   }); // ./grup_kosa_kata_siswa_final
					// }



		}
  }); // ./req.getConnection(function (err, connection)
};
