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
	var sql 		= "SELECT * from data_siswa where nis_siswa='10888'"; //userID
	connection.query(sql, function  (err_final,rows){
		res.render('dashboard.ejs',{session:rows[0].nis_siswa, jabatan:rows[0].jabatan_siswa});
	})
};

// Response Chat
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
			if (data[1] == "pegawai") {
				var sqls 		= "SELECT "+data[0]+", nip_pegawai FROM data_pegawai WHERE nama_pegawai REGEXP '"+data[2]+"' order by nama_pegawai asc LIMIT 1 OFFSET "+offset;
				connection.query(sqls, function  (err_final,rows){
				  if (rows === undefined) { }
				  else if (data[3] < data[4] || data[4] == 0) {
				    res.send("Keluar dari pilihan.</b>|"
				           +"|"
				           +"success|"
				           +"plain")
				   	return false;
				  }
				  else {
				    var rows_s = JSON.stringify(rows)
				    var rows_s = rows_s.split(":")
				    var rows_s = rows_s[1].replace(/[^a-zA-Z0-9\s']/gi, "");
				    var rows_s = rows_s.replace(/nippegawai/gi, "");
				    res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[0].nip_pegawai+"' style='width:170px'></img>|"
				            +rows_s+"|"
				            +"success|"
				            +"");
				    //jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
				    if (data.isi_pesan_chat_pengguna_choose !== null) { return false; }
				    return false;
				  }
				})
			}
			else if (data[1] == "siswa") {
				var sqls 		= "SELECT "+data[0]+", nis_siswa FROM data_siswa WHERE nama_siswa REGEXP '"+data[2]+"' order by nama_siswa asc LIMIT 1 OFFSET "+offset;
				connection.query(sqls, function  (err_final,rows){
					if (rows === undefined) { }
					else if (data[3] < data[4] || data[4] == 0) {
						res.send("Keluar dari pilihan.</b>|"
									 +"|"
									 +"success|"
									 +"plain")
					 return false;
					}
					else {
						var rows_s = JSON.stringify(rows)
						var rows_s = rows_s.split(":")
						var rows_s = rows_s[1].replace(/[^a-zA-Z0-9\s']/gi, "");
						var rows_s = rows_s.replace(/nissiswa/gi, "");
						// DATA KOSONG SISWA
						if (rows_s == "null" || rows_s == "") {
							res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
											+"Mohon maaf, data yang kamu minta masih kosong.|"
											+"success|"
											+"");
							return false
						}
						else {
							res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
							+rows_s+"|"
							+"success|"
							+"");
							return false;
						}
						//jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
						if (data.isi_pesan_chat_pengguna_choose !== null) { return false; }
						return false;
					}
				})
			}
		}
		else if (data.isi_pesan_chat_pengguna_choose.length == 0) {
			var privilege = ["siswa"];
			var parameter =	[privilege];
			var sqls 		= "SELECT * FROM pesan_chat_bot_kosa_kata_siswa WHERE chat_privilege_kosa_kata REGEXP ?";
			connection.query(sqls, parameter, function  (err,rows){
				if (err) throw err;
			    for (var i = 0; i < rows.length; i++){
			      var kosa_kata = rows[i].kosa_kata_pesan_chat_bot_kosa_kata_siswa;
			        var regex = new RegExp(kosa_kata, 'gi');
			        var ress = parse.match(regex);
			        if (ress !== null) {
			          var res1 = ress;
			        }
					}
					// NOT FOUND kosa kata dan SUGGEST ksoa kata siswa
				  if (res1 === undefined) {
				    var sql = "SELECT kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa ORDER BY kosa_kata_pesan_chat_bot_kosa_kata_siswa asc";
				    connection.query(sql, function  (err_rows,rows){
				      var g = []
				      var h = []
							var p = parse.replace(/(pegawai|siswa|dan)/gi, "")
							var p = p.split(" ")
							var p = p.filter(function(n){ return n != '' });
							for (var i = 0; i < p.length; i++) {
							  for (var j = 0; j < rows.length; j++) {
							    var r = new RegExp(p[i], 'gi')
							    var m = rows[j].kosa_kata_pesan_chat_bot_kosa_kata_siswa.match(r)
							    if (m !== null) {
							      g.push(rows[j].kosa_kata_pesan_chat_bot_kosa_kata_siswa)
							    }
							  }
							  // console.log('===================');
							}
							var g = g.filter(function(elem, index, self) { return index === self.indexOf(elem); }) // hapus array duplikat
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
										v.push("<br>"+no+". "+rows[i].kosa_kata_pesan_chat_bot_kosa_kata_siswa+'<button>Tes</button>');
									}
                  // Pertanyaan tidak ada didatabase sama sekali
									var v = JSON.stringify(v)
									var v = v.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
									res.send("Mohon maaf, maksud dari pertanyaan '<b>"+pesan+"</b>' apa ya ? <br>Kami tidak memahami <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
												 +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : <b>"+v+"</b>|"
												 +"error|"
												 +"");
								})
				 			return false;
							}
							// ./HANDLING NULL SUGGEST SISWA
				      var g = JSON.stringify(h);
				      var h	= g.replace(/[^0-9a-z,.\s]/gi, "")
				      var i	= h.replace(/,/gi, "<br>")
				      var j= i.split(",");
				      var k = j.filter(function(elem, index, self) { return index === self.indexOf(elem); }) //hapus data array yang duplikat
				      res.send("Mohon maaf, kami tidak memahami <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
				              +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : <br><b>"+k+"</b>|"
				              +"error|"
				              +"suggest");
				    })
				  } // ./NOT FOUND kosa kata dan SUGGEST ksoa kata siswa
					else {
						// MENCARI GRUP KOSA KATA (SISWA)
				    var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa WHERE kosa_kata_pesan_chat_bot_kosa_kata_siswa ='"+res1+"'";
				    connection.query(sql, function  (err_grup_kosa_kata,rows_grup_kosa_kata){
				      if (err_grup_kosa_kata) throw err_grup_kosa_kata;

				      var grup_kosa_kata_final 	= rows_grup_kosa_kata[0].grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa;
							var grup 									= grup_kosa_kata_final.split("_");
							var grup								 	= grup[grup.length - 1];

							if (grup == "pembayaran") {
								var sql = "SELECT * FROM pembayaran INNER JOIN pembayaran_daftar on pembayaran.kd_pembayaran = pembayaran_daftar.kd_pembayaran_daftar where nis_siswa_pembayaran='10888' ORDER BY lunas_pembayaran DESC"; // userID
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
										dataArray.push("<br><b>"+no+". "+rows[i].nama_pembayaran_daftar+"</b><br>a). Status : <br><b>"+y_n+"</b><br>b). Kekurangan : <br><b>"+kekurangan+"</b><br>c). Terakhir Bayar : <br><b>"+tanggal_terakhir_pembayaran+"</b><br>");
									}
									var dataArray = JSON.stringify(dataArray)
									var dataArray = dataArray.replace(/[^a-zA-Z0-9.\s+<>:(=)'_/&#-]/g, "")
								res.send("Jika kamu merasa sudah melunasi, namun belum tercatat dibagian <b>Tata Usaha</b>, mohon segera <b>lapor</b> dan membawa <b>bukti pembayaran</b> ke bagian <b>Tata Usaha</b>.|"
					              +"Daftar Tagihan Pembayaran Kamu : <br>"+dataArray+"|"
					              +"success|"
					              +"");
								return false;
							})
							}
							else if (grup == "kelas") { //JIKA YANG DICARI DAFTAR KELAS DAN WALI KELAS
								var sql = "SELECT * FROM kelas_transaksi INNER JOIN data_pegawai on kelas_transaksi.nip_pegawai_wali_kelas_transaksi = data_pegawai.nip_pegawai ORDER BY kd_kelas_daftar_kelas_transaksi ASC";
						    connection.query(sql, function  (err_rows,rows){
								var sql = "SELECT kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan, COUNT(DISTINCT nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan) AS cnt FROM nilai_siswa_transaksi_smt1_pengetahuan GROUP by kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan ORDER BY kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan ASC";
								connection.query(sql, function (err_hitung_jml_siswa_per_kelas,hitung_jml_siswa_per_kelas){
								var arr = []
								for (var i = 0; i < rows.length; i++) {
									for (var j = 0; j < hitung_jml_siswa_per_kelas.length; j++) {
										var regex = new RegExp (rows[i].kd_kelas_daftar_kelas_transaksi, 'g')
										var regex	= hitung_jml_siswa_per_kelas[j].kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan.match(regex)
										if (regex !== null) {
											var no = j+1;
											arr.push("<br><b>"+no+". Nama Kelas : "+rows[i].kd_kelas_daftar_kelas_transaksi+"</b><br>Data : <br>a). Wali Kelas : <b>"+rows[i].nama_pegawai+"</b><br>b). Jumlah Siswa : <b>"+hitung_jml_siswa_per_kelas[j].cnt+"</b><br>");
										}
										// console.log(hitung_jml_siswa_per_kelas[j].kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan+' - '+rows[i].kd_kelas_daftar_kelas_transaksi+' - '+hitung_jml_siswa_per_kelas[j].cnt);
									}
								}
								var arr = JSON.stringify(arr)
								var arr = arr.replace(/[^a-zA-Z0-9.\s+<>:='_/&#]/g, "")
								res.send("Daftar Kelas dan Wali Kelas : <br>"+arr+"|"
					              +"|"
					              +"success|"
					              +"plain");
								return false;
							})
							})
							}
              // Bertanya berkaitan dengan guru maupun siswa
							else if (grup == "siswa" || grup == "pegawai") { //JIKA YANG DICARI DAFTAR KELAS DAN WALI KELAS
								if (grup_kosa_kata_final == "0_jumlah_siswa" || grup_kosa_kata_final == "0_jumlah_pegawai") {
									var jabatan_yg_dicari = grup_kosa_kata_final.split("_");
									if (jabatan_yg_dicari[2] == "siswa") {
										var sql = "SELECT * FROM kelas_transaksi INNER JOIN data_pegawai on kelas_transaksi.nip_pegawai_wali_kelas_transaksi = data_pegawai.nip_pegawai ORDER BY kd_kelas_daftar_kelas_transaksi ASC";
								    connection.query(sql, function  (err_rows,rows){
										var sql = "SELECT kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan, COUNT(DISTINCT nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan) AS cnt FROM nilai_siswa_transaksi_smt1_pengetahuan GROUP by kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan ORDER BY kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan ASC";
										connection.query(sql, function (err_hitung_jml_siswa_per_kelas,hitung_jml_siswa_per_kelas){
										var sql = "SELECT COUNT(nis_siswa) as jumlah_seluruh_siswa FROM data_siswa";
								    connection.query(sql, function  (err_rows,rows_jumlah_siswa){
											var arr = []
											for (var i = 0; i < rows.length; i++) {
												for (var j = 0; j < hitung_jml_siswa_per_kelas.length; j++) {
													var regex = new RegExp (rows[i].kd_kelas_daftar_kelas_transaksi, 'g')
													var regex	= hitung_jml_siswa_per_kelas[j].kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan.match(regex)
													if (regex !== null) {
														var no = j+1;
														arr.push("<br><b>"+no+". Nama Kelas : <b>"+rows[i].kd_kelas_daftar_kelas_transaksi+"</b></b><br>Data : <br>a). Jumlah Siswa : <b>"+hitung_jml_siswa_per_kelas[j].cnt+"</b><br>");
													}
													// console.log(hitung_jml_siswa_per_kelas[j].kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan+' - '+rows[i].kd_kelas_daftar_kelas_transaksi+' - '+hitung_jml_siswa_per_kelas[j].cnt);
												}
											}
											arr.push("<br>Jumlah Seluruh Siswa : <b><br>"+rows_jumlah_siswa[0].jumlah_seluruh_siswa+"</b>")
											var arr = JSON.stringify(arr)
											var arr = arr.replace(/[^a-zA-Z0-9.\s+<>:='_/&#]/g, "")
											res.send("Jumlah Seluruh Siswa : <br>"+arr+"|"
								              +"|"
								              +"success|"
								              +"plain");
											return false;
										})
									})
									})
									}
									else if(jabatan_yg_dicari[2] == "pegawai"){
										var sql = "SELECT * FROM kelas_transaksi INNER JOIN data_pegawai on kelas_transaksi.nip_pegawai_wali_kelas_transaksi = data_pegawai.nip_pegawai ORDER BY kd_kelas_daftar_kelas_transaksi ASC";
								    connection.query(sql, function  (err_rows,rows){
										var sql = "SELECT kd_kelas_daftar_mata_pelajaran_transaksi, COUNT(DISTINCT nip_pegawai_mata_pelajaran_transaksi) AS cnt FROM mata_pelajaran_transaksi GROUP BY kd_kelas_daftar_mata_pelajaran_transaksi ORDER BY kd_kelas_daftar_mata_pelajaran_transaksi ASC";
										connection.query(sql, function (err_hitung_jml_pegawai_per_kelas,hitung_jml_pegawai_per_kelas){
										var sql = "SELECT COUNT(nip_pegawai) as jumlah_seluruh_pegawai FROM data_pegawai WHERE jabatan_pegawai != 'admin'";
								    connection.query(sql, function  (err_rows,rows_jumlah_pegawai){
											var arr = []
											for (var i = 0; i < rows.length; i++) {
												for (var j = 0; j < hitung_jml_pegawai_per_kelas.length; j++) {
													var regex = new RegExp (rows[i].kd_kelas_daftar_kelas_transaksi, 'g')
													var regex	= hitung_jml_pegawai_per_kelas[j].kd_kelas_daftar_mata_pelajaran_transaksi.match(regex)
													if (regex !== null) {
														var no = j+1;
														arr.push("<br><b>"+no+". Nama Kelas : <b>"+rows[i].kd_kelas_daftar_kelas_transaksi+"</b></b><br>Data : <br>a). Jumlah Pegawai : <b>"+hitung_jml_pegawai_per_kelas[j].cnt+"</b><br>");
													}
													// console.log(hitung_jml_pegawai_per_kelas[j].kd_kelas_daftar_nilai_pegawai_transaksi_smt1_pengetahuan+' - '+rows[i].kd_kelas_daftar_kelas_transaksi+' - '+hitung_jml_pegawai_per_kelas[j].cnt);
												}
											}
											arr.push("<br>Jumlah Seluruh Pegawai : <b><br>"+rows_jumlah_pegawai[0].jumlah_seluruh_pegawai+"</b>")
											var arr = JSON.stringify(arr)
											var arr = arr.replace(/[^a-zA-Z0-9.\s+<>:='_/&#]/g, "")
											res.send("Jumlah Seluruh pegawai : <br>"+arr+"|"
								              +"|"
								              +"success|"
								              +"plain");
											return false;
									})
									})
									})
									}
								}
                // Bertanya tentang profile pegawai atau siswa
								else {
									var jabatan_cari = pesan.match(/(pegawai|siswa)/gi);
						      if (jabatan_cari == 'pegawai') {
										var sql = "SELECT nama_pegawai,jabatan_pegawai FROM data_pegawai order by nama_pegawai asc";
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
										  // NOT FOUND 3 pegawai
										  if (index === undefined) {
										    res.send("Mohon maaf, <b>nama pengguna</b> yang dicari tidak ditemukan.<br><b>Ulangi pertanyaanmu lagi.</b>|"
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
										  for (var i = 0; i < arr.length; i++) {
										    var nama_fix2 = arr[i];
										    for (var j = 0; j < rows_cari_nama.length; j++) {
										      var regex5 = new RegExp(nama_fix2, 'gi');
										      var regex6 = rows_cari_nama[j].nama_pegawai.match(regex5);
										      if (regex6 !== null) {
										        if (nama_fix2 === "") { return false }
										        else {
										          var selects 								= [regex6[0]];
										          var sql 										= "SELECT COUNT(*) from data_pegawai WHERE nama_pegawai REGEXP ?";
										          connection.query(sql, selects, function  (err_final,rows_count_pegawai){
										            var count_pegawai = JSON.stringify(rows_count_pegawai)
										            var count_pegawai = count_pegawai.replace(/[^0-9]+/, "")
										            var count_pegawai = count_pegawai.replace(/[^0-9]+/, "")
										            if (count_pegawai == 1) {
                                  // Variabel menghubungkan antara tabel pegawai dan mata pelajaran
																	if (grup_kosa_kata_final == "nama_mata_pelajaran_pegawai") { var grup	=	grup_kosa_kata_final.replace(/_pegawai/gi, ""); }
																	else { var grup	=	grup_kosa_kata_final; }
										              var selects 								= [grup, regex6[0]];
										              var sql 										= "SELECT ??, nip_pegawai FROM data_pegawai INNER JOIN mata_pelajaran ON data_pegawai.kd_mata_pelajaran_pegawai = mata_pelajaran.kd_mata_pelajaran WHERE nama_pegawai REGEXP ? order by nama_pegawai asc";
										              connection.query(sql, selects, function  (err_final,rows){
										                if (err_final) throw err_final;
										                var rowss_final = JSON.stringify(rows);
										                var final				= rowss_final.split(":");
										                var final			= final[1].replace(/[^a-zA-Z0-9\s']/gi, "");
										                var final			= final.replace(/nippegawai/gi, "");
										                function capital_letter(str){
										                  str = str.split(" ");
										                  for (var i = 0, x = str.length; i < x; i++){ str[i] = str[i][0].toUpperCase() + str[i].substr(1); }
										                  return str.join(" ");
										                } // ./READONLY
										                // DATA KOSONG pegawai
										                if (final == "null" || final == "") {
										                  res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[0].nip_pegawai+"' style='width:170px'></img>|"
										                          +"Mohon maaf, data yang kamu minta masih kosong.|"
										                          +"success|"
										                          +"");
										                  return false
										                }
										                else {
										                  res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[0].nip_pegawai+"' style='width:170px'></img>|"
										                  +final+"|"
										                  +"success|"
										                  +"");
										                  return false;
										                }
										              });// ./rows
										            }
										            else if (count_pegawai > 1) {
										              var selects = [regex6[0]];
										              var sql 		= "SELECT nama_pegawai, nip_pegawai FROM data_pegawai WHERE nama_pegawai REGEXP ? ORDER BY nama_pegawai asc";
										              connection.query(sql, selects, function  (err_final,rows){
										                var nama_nip_pegawai = JSON.stringify(rows)
										                var nama_nip_baru = []
										                for (var i = 0; i < rows.length; i++) {
										                  var j = i+1;
										                  nama_nip_baru.push("<br>"+j+". "+rows[i].nama_pegawai+"<br><img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[i].nip_pegawai+"' style='width:70px'></img>")
										                }
										                nama_nip_baru.push("<br>"+(j+1)+" > lebih. <b>Keluar<b>")
										                var nama_nip_baru = JSON.stringify(nama_nip_baru)
										                var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
										                res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
										                        +"Coba pilih nomor yang telah disediakan : |"
										                        +"success|"
										                        +"duplicate_name|"
										                        +grup_kosa_kata_final+'>'+jabatan_cari+'>'+regex6[0]+'>'+count_pegawai);
										              })
										            }
										            console.log('--> fix  : '+res1); //object
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
										return false;
						      }
									else if (jabatan_cari == 'siswa') {
										var sql = "SELECT nama_siswa,jabatan_siswa FROM data_siswa order by nama_siswa asc";
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
							          res.send("Mohon maaf, <b>nama pengguna</b> yang dicari tidak ditemukan.<br><b>Ulangi pertanyaanmu lagi.</b>|"
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
																		if (final == "null" || final == "") {
																			res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
									                            +"Mohon maaf, data yang kamu minta masih kosong.|"
									                            +"success|"
									                            +"");
																			return false
																		}
																		else {
																			res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
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
																		// console.log(grup_kosa_kata_final+'>'+regex6[0]+'>'+count_siswa);
							                      var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
							                      res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
							                              +"Coba pilih nomor yang telah disediakan : |"
							                              +"success|"
							                              +"duplicate_name|"
							                              +grup_kosa_kata_final+'>'+jabatan_cari+'>'+regex6[0]+'>'+count_siswa);
							                    })
							                  }
							                  console.log('--> fix  : '+res1); //object
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
									}
								}
							}
				      }); // ./grup_kosa_kata_final
				  }
				return false;
			})
		}
  }); // ./req.getConnection(function (err, connection)
};
