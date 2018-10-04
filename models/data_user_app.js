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

// VIEWS
exports.dashboard_user = function(req, res){
	// let userId = req.session.userId;
	// if(userId == null){ res.redirect("/"); return false; }
	// if (req.session.jabatan == "siswa") {
	// 	var sql 		= "SELECT * FROM data_siswa WHERE nis_siswa='1088'"; //userID
	// 	connection.query(sql, function  (err_final,rows){
	// 		res.render('dashboard.ejs',{session:rows[0].nis_siswa, jabatan:rows[0].jabatan_siswa, nama_pengguna:rows[0].nama_siswa});
	// 	})
	// }
	// else if (req.session.jabatan == "guru") {
	// 	var sql 		= "SELECT * FROM data_pegawai WHERE nip_pegawai='1088'"; //userID
	// 	connection.query(sql, function  (err_final,rows){
	// 		res.render('dashboard.ejs',{session:rows[0].nip_pegawai, jabatan:rows[0].jabatan_pegawai, nama_pengguna:rows[0].nama_pegawai});
	// 	})
	// }
  // development
	res.render('dashboard.ejs',{session:'1088', jabatan:'siswa', nama_pengguna:'addisty'});
};
exports.dashboard_tutorial_video = function(req, res){
	let userId = req.session.userId;
	if(userId == null){ res.redirect("/"); return false; }

	if (req.session.jabatan == "siswa") {
		var sql 		= "SELECT * FROM data_siswa WHERE nis_siswa='1088'"; //userID
		connection.query(sql, function  (err_final,rows){
			var sql 		= "SELECT * FROM tutorial_chatbot_video"; //userID
			connection.query(sql, function  (err_chatbot_video,rows_chatbot_video){
			res.render('dashboard_tutorial_video.ejs',{session:rows[0].nis_siswa, jabatan:rows[0].jabatan_siswa, nama_pengguna:rows[0].nama_siswa, rows_chatbot_video:rows_chatbot_video});
		})
		})
	}
	else if (req.session.jabatan == "guru") {
		var sql 		= "SELECT * FROM data_pegawai WHERE nip_pegawai='1088'"; //userID
		connection.query(sql, function  (err_final,rows){
		var sql 		= "SELECT * FROM tutorial_chatbot_video"; //userID
		connection.query(sql, function  (err_chatbot_video,rows_chatbot_video){
			res.render('dashboard_tutorial_video.ejs',{session:rows[0].nip_pegawai, jabatan:rows[0].jabatan_pegawai, nama_pengguna:rows[0].nama_pegawai, rows_chatbot_video:rows_chatbot_video});
		})
		})
	}
};

exports.dashboard_tutorial_video_cari = function(req, res){
	var cari_judul_tutorial_video = req.params.id;

	var sql 		= "SELECT * FROM tutorial_chatbot_video WHERE nama_tutorial_chatbot_video REGEXP '"+cari_judul_tutorial_video+"'"; //userID
	connection.query(sql, function  (err_cari_video,rows_cari_video){
		if (err_cari_video) throw err_cari_video;
		if (rows_cari_video.length !== 0) {
			var arr_hasil_judul = [];
			for (var i = 0; i < rows_cari_video.length; i++) {
				var no = i + 1;
				arr_hasil_judul.push('\
				<div class="col s12 l4">\
					<p style="font-size:20px;color:#262626;"><b>'+no+'. '+rows_cari_video[i].nama_tutorial_chatbot_video+'</b></p>\
					<video class="responsive-video" controls>\
						<source src="http://localhost/_Project/chat_bot/media/video_tutorial/'+rows_cari_video[i].kd_tutorial_chatbot_video+'.mp4" type="video/mp4">\
					</video>\
				</div>\
				');
			}
			var arr_hasil_judul = JSON.stringify(arr_hasil_judul);
			var arr_hasil_judul	=	arr_hasil_judul.replace(/(\\t|\\|\["|"]|",")/g, '')
			res.send(arr_hasil_judul)
		}
		else {
			res.send('\
			<div class="col s12 l12">\
				<p class="center">Video Tutorial yang Kamu Cari Tidak Ditemukan.</p>\
			</div>\
			')
		}
		return false;
	})
	return false;
};
// ./ VIEWS

// Insert Chat
exports.data_user_suggest = function(req,res,next){
  var input = JSON.parse(JSON.stringify(req.body));
	var suggest_kosa_kata = input.suggest_kosa_kata;
	var suggest_nomor_induk = input.suggest_nomor_induk;
	req.getConnection(function (err, connection) {
		var parameter = [suggest_kosa_kata, suggest_nomor_induk];
		var sql 		= "INSERT INTO pesan_chat_bot_kosa_kata_suggest (kata_kunci_pesan_chat_bot_kosa_kata_suggest, nomor_induk_pesan_chat_bot_kosa_kata_suggest) values (?,?)";
		connection.query(sql, parameter, function  (err_rows,rows){
			if (err_rows) throw err_rows;
			res.send("berhasil menyimpan suggest")
			return false;
		})
	})
};

// Response Chat
exports.chat_user = function(req,res,next){
	// let userId = req.session.userId;
	// if(userId == null){ res.redirect("/"); return false; }
  let input = JSON.parse(JSON.stringify(req.body));
  req.getConnection(function (err, connection) {
    var data = {
      pengirim_pesan_chat_pengguna  			: input.pengirim_pesan_chat_pengguna,
      penerima_pesan_chat_pengguna  			: 'bot',
      isi_pesan_chat_pengguna       			: sanitizer.escape(input.isi_pesan_chat_pengguna),
      isi_pesan_chat_pengguna_choose  		: input.isi_pesan_chat_pengguna_choose,
      isi_pesan_chat_pengguna_blank_name  : input.isi_pesan_chat_pengguna_blank_name,
      waktu_pesan_chat_pengguna     			: new Date(dt.now())
    };
		// RESPONSE
		var pesan  	= input.isi_pesan_chat_pengguna;
		var json 	 	= JSON.stringify(pesan);
		var parse0 	=	json.replace(/[!?]/gi, "");
		var parse  	= JSON.parse(parse0);

		if (data.isi_pesan_chat_pengguna_blank_name.length >= 1 && data.isi_pesan_chat_pengguna_choose.length == 0) {
			var data 		= data.isi_pesan_chat_pengguna_blank_name+data.isi_pesan_chat_pengguna;
			var data 		= data.split(">") // [ 'nama_pegawai', 'pegawai', 'NUR', '2', '1' ]
			var offset 	= data[4]-1;
			var grup		=	data[0]; // grup kosa kata
			if (data[1] == "pegawai") {
				if (grup == "nama_mata_pelajaran_pegawai") {
					var grup	=	grup.replace(/_pegawai/gi, "");
				}
				var sqls 		= "SELECT "+grup+", nip_pegawai FROM data_pegawai INNER JOIN mata_pelajaran ON data_pegawai.kd_mata_pelajaran_pegawai = mata_pelajaran.kd_mata_pelajaran WHERE nama_pegawai REGEXP '"+data[2]+"' ORDER BY nama_pegawai ASC";
				connection.query(sqls, function  (err_final,rows){
					if (rows.length == 0) {
						res.send("Nama Pegawai Tidak Tersedia.</b>|"
									 +"|"
									 +"error|"
									 +"1_parameter")
						return false;
					}
					else if (rows.length >= 1) {
						var selects = [data[2]];
						var sql 		= "SELECT nama_pegawai, nip_pegawai FROM data_pegawai WHERE nama_pegawai REGEXP ? ORDER BY nama_pegawai ASC";
						connection.query(sql, selects, function  (err_final,rows){
							var nama_nip_pegawai = JSON.stringify(rows)
							var nama_nip_baru = []
							for (var i = 0; i < rows.length; i++) {
								var j = i+1;
								nama_nip_baru.push("<br><b>"+j+"</b>. "+rows[i].nama_pegawai+"<br><img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[i].nip_pegawai+"' style='width:70px'></img>")
							}
							nama_nip_baru.push("<br><b>"+(j+1)+"</b> > lebih. <b>Keluar<b>")
							var nama_nip_baru = JSON.stringify(nama_nip_baru)
							var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
							res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
											+"Coba pilih nomor yang telah disediakan : |"
											+"success|"
											+"duplicate_name|"
											+data[0]+'>pegawai>'+data[2]+'>'+rows.length);
						})
					}
				  else {
				    var rows_s = JSON.stringify(rows)
				    var rows_s = rows_s.split(":")
				    var rows_s = rows_s[1].replace(/[^a-zA-Z0-9\s']/gi, "");
				    var rows_s = rows_s.replace(/nippegawai/gi, "");
						// DATA KOSONG SISWA
						if (rows_s == "null" || rows_s == "") {
							res.send("Mohon maaf, data yang kamu minta masih kosong.|"
											+"|"
											+"error|"
											+"1_parameter");
							return false
						}
						else {
					    res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[0].nip_pegawai+"' style='width:170px'></img>|"
					            +rows_s+"|"
					            +"success|"
					            +"2_parameters");
						}
				  }
				})
			}
			else if (data[1] == "siswa") {
				var sqls 		= "SELECT "+data[0]+", nis_siswa FROM data_siswa WHERE nama_siswa REGEXP '"+data[2]+"' ORDER BY nama_siswa ASC";
				connection.query(sqls, function  (err_final,rows){
					if (rows.length == 0) {
						res.send("Nama Siswa Tidak Tersedia.</b>|"
									 +"|"
									 +"error|"
									 +"1_parameter")
						return false;
					}
					else if (rows.length >= 1) {
						var selects = [data[2]];
						var sql 		= "SELECT nama_siswa, nis_siswa FROM data_siswa WHERE nama_siswa REGEXP ? ORDER BY nama_siswa ASC";
						connection.query(sql, selects, function  (err_final,rows){
							var nama_nis_siswa = JSON.stringify(rows)
							var nama_nip_baru = []
							for (var i = 0; i < rows.length; i++) {
								var j = i+1;
								nama_nip_baru.push("<br><b>"+j+"</b>. "+rows[i].nama_siswa+"<br><img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[i].nis_siswa+"' style='width:70px'></img>")
							}
							nama_nip_baru.push("<br><b>"+(j+1)+"</b> > lebih. <b>Keluar<b>")
							var nama_nip_baru = JSON.stringify(nama_nip_baru)
							// console.log(grup_kosa_kata_final+'>'+regex6[0]+'>'+count_siswa);
							var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
							res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
											+"Coba pilih nomor yang telah disediakan : |"
											+"success|"
											+"duplicate_name|"
											+data[0]+'>siswa>'+data[2]+'>'+rows.length);
						})
					}
					else {
						var rows_s = JSON.stringify(rows)
						var rows_s = rows_s.split(":")
						var rows_s = rows_s[1].replace(/[^a-zA-Z0-9\s']/gi, "");
						var rows_s = rows_s.replace(/nissiswa/gi, "");

						res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
						+rows_s+"|"
						+"success|"
						+"2_parameters");
						return false;
					}
				})
			}
			else if (data[1] == "kelas") {
					var sqls 		= "SELECT kd_kelas_daftar, nama_kelas_daftar FROM kelas_daftar WHERE nama_kelas_daftar REGEXP '"+data[2]+"' ORDER BY nama_kelas_daftar ASC";
					connection.query(sqls, function  (err_final,rows){
						if (rows.length == 0) {
							res.send("Nama Kelas Tidak Tersedia.</b>|"
										 +"|"
										 +"error|"
										 +"1_parameter")
							return false;
						}
						else if (rows.length >= 1) {
							var parameter = [data[2]];
							var sql = "SELECT nama_kelas_daftar FROM kelas_daftar WHERE nama_kelas_daftar REGEXP ? ORDER BY nama_kelas_daftar ASC";
								connection.query(sql, parameter, function (err_cari_kd_kelas,rows_cari_kd_kelas){
									var daftar_duplikasi_nama_kelas	=	[]
									for (var i = 0; i < rows_cari_kd_kelas.length; i++) {
										var no = i + 1;
										daftar_duplikasi_nama_kelas.push('<br>'+no+'. '+rows_cari_kd_kelas[i].nama_kelas_daftar);
									}
									daftar_duplikasi_nama_kelas.push("<br><b>"+(no+1)+"</b> > lebih. <b>Keluar<b>")
									var daftar_duplikasi_nama_kelas = JSON.stringify(daftar_duplikasi_nama_kelas)
									var daftar_duplikasi_nama_kelas = daftar_duplikasi_nama_kelas.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
									res.send('Terdapat <b>duplikasi nama kelas</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br>'+daftar_duplikasi_nama_kelas+"|"
									+"Coba pilih nomor yang telah disediakan : |"
									+"success|"
									+"duplicate_name|"
									+data[0]+'>kelas>'+data[2]+'>'+rows.length);
								})
								return false;
						}
						else {
							var kd_kelas_daftar 	= rows[0].kd_kelas_daftar;
							var nama_kelas_daftar = rows[0].nama_kelas_daftar;

							if (data[0] == "0_daftar_nama_seluruh_siswa_kelas") {
								var sql = "SELECT nis_siswa, nama_siswa FROM nilai_siswa_transaksi_smt1_pengetahuan INNER JOIN data_siswa ON nilai_siswa_transaksi_smt1_pengetahuan.nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan = data_siswa.nis_siswa WHERE kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan REGEXP '"+kd_kelas_daftar+"' GROUP BY nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan ORDER BY nama_siswa ASC";
									connection.query(sql, function (err_cari_kelas_transaksi,rows_nama_seluruh_siswa_kelas){
										if (err_cari_kelas_transaksi) throw err_cari_kelas_transaksi;
										if (rows_nama_seluruh_siswa_kelas.length !== 0) {
											var daftar_nama_seluruh_siswa_kelas	=	[]
											for (var i = 0; i < rows_nama_seluruh_siswa_kelas.length; i++) {
												var no = i + 1;
												daftar_nama_seluruh_siswa_kelas.push('<br>'+no+'. <b>('+rows_nama_seluruh_siswa_kelas[i].nis_siswa+')</b> '+rows_nama_seluruh_siswa_kelas[i].nama_siswa);
											}
											var daftar_nama_seluruh_siswa_kelas = JSON.stringify(daftar_nama_seluruh_siswa_kelas)
											var daftar_nama_seluruh_siswa_kelas = daftar_nama_seluruh_siswa_kelas.replace(/[^a-zA-Z0-9.\s+<>:='(_)/&#-]/g, "")
											res.send('Daftar seluruh nama siswa kelas <b>'+nama_kelas_daftar+'</b> adalah : <br>'+daftar_nama_seluruh_siswa_kelas+"|"
											+"|"
											+"success|"
											+"1_parameter");
											return false;
										}
										else {
											res.send("Kelas <b>"+nama_kelas_daftar+"</b> tidak ada siswanya.|"
											+"|"
											+"error|"
											+"1_parameter");
										}
								})
							}
							else {
								var sql = "SELECT * FROM mata_pelajaran_transaksi INNER JOIN data_pegawai ON mata_pelajaran_transaksi.nip_pegawai_mata_pelajaran_transaksi = data_pegawai.nip_pegawai INNER JOIN mata_pelajaran ON mata_pelajaran.kd_mata_pelajaran = mata_pelajaran_transaksi.kd_mata_pelajaran_transaksi WHERE kd_kelas_daftar_mata_pelajaran_transaksi REGEXP '"+kd_kelas_daftar+"' ORDER BY kd_kelas_daftar_mata_pelajaran_transaksi ASC";
									connection.query(sql, function (err,rows){
										if (err) throw err;
										var daftar_mapel_dan_pengampu_mapel_per_kelas	=	[]
										for (var i = 0; i < rows.length; i++) {
											var no = i + 1;
											daftar_mapel_dan_pengampu_mapel_per_kelas.push('<br><br>'+no+'. Data ke -'+no+'<br> <b>Nama Mata Pelajaran</b> : '+rows[i].nama_mata_pelajaran+' <br><b>Nama Pengampu</b> : '+rows[i].nama_pegawai);
										}
										var daftar_mapel_dan_pengampu_mapel_per_kelas = JSON.stringify(daftar_mapel_dan_pengampu_mapel_per_kelas)
										var daftar_mapel_dan_pengampu_mapel_per_kelas = daftar_mapel_dan_pengampu_mapel_per_kelas.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
										if (daftar_mapel_dan_pengampu_mapel_per_kelas !== "") {
											res.send('Pengampu mata pelajaran kelas <b>'+nama_kelas_daftar+'</b> adalah : '+daftar_mapel_dan_pengampu_mapel_per_kelas+"|"
											+"|"
											+"success|"
											+"1_parameter");
										}
										else {
											res.send("Pengampu mata pelajaran kelas <b>"+nama_kelas_daftar+"</b> tidak ada pengampunya|"
											+"|"
											+"error|"
											+"1_parameter");
										}
								})
								return false;
							}
						}
					})
			}
			else if (data[1] == "mapel") {
				var sqls 		= "SELECT kd_mata_pelajaran, nama_mata_pelajaran FROM mata_pelajaran WHERE nama_mata_pelajaran REGEXP '"+data[2]+"' ORDER BY nama_mata_pelajaran ASC";
				connection.query(sqls, function  (err_final,rows){
					if (rows.length == 0) {
						res.send("Nama Mata Pelajaran Tidak Tersedia.</b>|"
									 +"|"
									 +"error|"
									 +"1_parameter")
						return false;
					}
					else if (rows.length >= 1) {
						var parameter = [data[2]]
						var sql = "SELECT nama_mata_pelajaran FROM mata_pelajaran WHERE nama_mata_pelajaran REGEXP ? ORDER BY nama_mata_pelajaran ASC";
							connection.query(sql, parameter, function (err_cari_kd_mapel,rows_cari_kd_mapel){
								var daftar_duplikasi_nama_mapel	=	[]
								for (var i = 0; i < rows_cari_kd_mapel.length; i++) {
									var no = i + 1;
									daftar_duplikasi_nama_mapel.push('<br>'+no+'. '+rows_cari_kd_mapel[i].nama_mata_pelajaran);
								}
								daftar_duplikasi_nama_mapel.push("<br><b>"+(no+1)+"</b> > lebih. <b>Keluar<b>")
								var daftar_duplikasi_nama_mapel = JSON.stringify(daftar_duplikasi_nama_mapel)
								var daftar_duplikasi_nama_mapel = daftar_duplikasi_nama_mapel.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
								res.send('Terdapat <b>duplikasi nama mata pelajaran</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br>'+daftar_duplikasi_nama_mapel+"|"
								+"Coba pilih nomor yang telah disediakan : |"
								+"success|"
								+"duplicate_name|"
								+data[0]+'>mapel>'+data[2]+'>'+rows.length);
							})
							return false;
					}
					else {
						var kd_mata_pelajaran = rows[0].kd_mata_pelajaran;
						var nama_mata_pelajaran = rows[0].nama_mata_pelajaran;

							var sql = "SELECT * FROM mata_pelajaran_transaksi INNER JOIN data_pegawai ON mata_pelajaran_transaksi.nip_pegawai_mata_pelajaran_transaksi = data_pegawai.nip_pegawai WHERE kd_mata_pelajaran_transaksi REGEXP '"+kd_mata_pelajaran+"' ORDER BY kd_kelas_daftar_mata_pelajaran_transaksi ASC";
								connection.query(sql, function (err_cari_mapel_transaksi,rows_cari_mapel_transaksi){
									if (err_cari_mapel_transaksi) throw err_cari_mapel_transaksi;
									var daftar_kelas_pengampu_mapel	=	[]
									for (var i = 0; i < rows_cari_mapel_transaksi.length; i++) {
										var no = i + 1;
										daftar_kelas_pengampu_mapel.push('<br><br>'+no+'. Data ke -'+no+'<br> <b>Nama Kelas</b> : '+rows_cari_mapel_transaksi[i].kd_kelas_daftar_mata_pelajaran_transaksi+' <br><b>Nama Pengampu</b> : '+rows_cari_mapel_transaksi[i].nama_pegawai);
									}
									var daftar_kelas_pengampu_mapel = JSON.stringify(daftar_kelas_pengampu_mapel)
									var daftar_kelas_pengampu_mapel = daftar_kelas_pengampu_mapel.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
									if (daftar_kelas_pengampu_mapel !== "") {
										res.send('Pengampu mata pelajaran <b>'+nama_mata_pelajaran+'</b> seluruh kelas adalah : '+daftar_kelas_pengampu_mapel+"|"
										+"|"
										+"success|"
										+"1_parameter");
									}
									else {
										res.send("Pengampu mata pelajaran dengan nama mata pelajaran <b>"+nama_mata_pelajaran+"</b> tidak ada pengampunya|"
										+"|"
										+"error|"
										+"1_parameter");
									}
							})
							return false;
					}
				})
			}
		}
		else if (data.isi_pesan_chat_pengguna_choose.length >= 1 && data.isi_pesan_chat_pengguna_blank_name.length == 0) {
			var data 		= data.isi_pesan_chat_pengguna_choose+data.isi_pesan_chat_pengguna;
			var data 		= data.split(">") // [ 'nama_pegawai', 'pegawai', 'NUR', '2', '1' ]
			var offset 	= data[4]-1;
			var grup		=	data[0]; // grup kosa kata
			if (data[1] == "pegawai") {
				if (grup == "nama_mata_pelajaran_pegawai") {
					var grup	=	grup.replace(/_pegawai/gi, "");
				}
				var sqls 		= "SELECT "+grup+", nip_pegawai FROM data_pegawai INNER JOIN mata_pelajaran ON data_pegawai.kd_mata_pelajaran_pegawai = mata_pelajaran.kd_mata_pelajaran WHERE nama_pegawai REGEXP '"+data[2]+"' ORDER BY nama_pegawai ASC LIMIT 1 OFFSET "+offset;
				connection.query(sqls, function  (err_final,rows){
				  if (rows === undefined) {
						res.send("Pilihan Tidak Tersedia.</b>|"
									 +"|"
									 +"error|"
									 +"1_parameter")
						return false;
					}
				  else if (data[3] < data[4] || data[4] == 0) {
				    res.send("Keluar dari pilihan.</b>|"
				           +"|"
				           +"success|"
				           +"1_parameter")
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
				            +"2_parameters");
				  }
				})
			} // ./ duplikat pegawai
			else if (data[1] == "siswa") {
				var sqls 		= "SELECT "+data[0]+", nis_siswa FROM data_siswa WHERE nama_siswa REGEXP '"+data[2]+"' ORDER BY nama_siswa ASC LIMIT 1 OFFSET "+offset;
				connection.query(sqls, function  (err_final,rows){
					if (rows === undefined) { // Jika yang diinputkan selain angka pada pemilihan, misal Huruff
						res.send("Pilihan Tidak Tersedia.</b>|"
									 +"|"
									 +"error|"
									 +"1_parameter")
						return false;
					}
					else if (data[3] < data[4] || data[4] == 0) {
						res.send("Keluar dari pilihan.</b>|"
									 +"|"
									 +"success|"
									 +"1_parameter")
					 return false;
					}
					else {
						var rows_s = JSON.stringify(rows)
						var rows_s = rows_s.split(":")
						var rows_s = rows_s[1].replace(/[^a-zA-Z0-9\s']/gi, "");
						var rows_s = rows_s.replace(/nissiswa/gi, "");
						// DATA KOSONG SISWA
						if (rows_s == "null" || rows_s == "") {
							res.send("Mohon maaf, data yang kamu minta masih kosong.|"
											+"|"
											+"error|"
											+"1_parameter");
							return false
						}
						else {
							res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
							+rows_s+"|"
							+"success|"
							+"2_parameters");
							return false;
						}
						//jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
						if (data.isi_pesan_chat_pengguna_choose !== null) { return false; }
						return false;
					}
				})
			} // ./ duplikat siswa
			else if (data[1] == "mapel") {
				var sqls 		= "SELECT kd_mata_pelajaran, nama_mata_pelajaran FROM mata_pelajaran WHERE nama_mata_pelajaran REGEXP '"+data[2]+"' ORDER BY nama_mata_pelajaran ASC LIMIT 1 OFFSET "+offset;
				connection.query(sqls, function  (err_final,rows){
					if (rows === undefined) { // Jika yang diinputkan selain angka pada pemilihan, misal Huruff
						res.send("Pilihan Tidak Tersedia.</b>|"
									 +"|"
									 +"error|"
									 +"1_parameter")
						return false;
					}
					else if (data[3] < data[4] || data[4] == 0 || rows.length == 0) {
						res.send("Keluar dari pilihan.</b>|"
									 +"|"
									 +"success|"
									 +"1_parameter")
					  return false;
					}
					else {
						var kd_mata_pelajaran = rows[0].kd_mata_pelajaran;
						var nama_mata_pelajaran = rows[0].nama_mata_pelajaran;

							var sql = "SELECT * FROM mata_pelajaran_transaksi INNER JOIN data_pegawai ON mata_pelajaran_transaksi.nip_pegawai_mata_pelajaran_transaksi = data_pegawai.nip_pegawai WHERE kd_mata_pelajaran_transaksi REGEXP '"+kd_mata_pelajaran+"' ORDER BY kd_kelas_daftar_mata_pelajaran_transaksi ASC";
								connection.query(sql, function (err_cari_mapel_transaksi,rows_cari_mapel_transaksi){
									if (err_cari_mapel_transaksi) throw err_cari_mapel_transaksi;
									var daftar_kelas_pengampu_mapel	=	[]
									for (var i = 0; i < rows_cari_mapel_transaksi.length; i++) {
										var no = i + 1;
										daftar_kelas_pengampu_mapel.push('<br><br>'+no+'. Data ke -'+no+'<br> <b>Nama Kelas</b> : '+rows_cari_mapel_transaksi[i].kd_kelas_daftar_mata_pelajaran_transaksi+' <br><b>Nama Pengampu</b> : '+rows_cari_mapel_transaksi[i].nama_pegawai);
									}
									var daftar_kelas_pengampu_mapel = JSON.stringify(daftar_kelas_pengampu_mapel)
									var daftar_kelas_pengampu_mapel = daftar_kelas_pengampu_mapel.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
									if (daftar_kelas_pengampu_mapel !== "") {
										res.send('Pengampu mata pelajaran <b>'+nama_mata_pelajaran+'</b> seluruh kelas adalah : '+daftar_kelas_pengampu_mapel+"|"
										+"|"
										+"success|"
										+"1_parameter");
									}
									else {
										res.send("Pengampu mata pelajaran dengan nama mata pelajaran <b>"+nama_mata_pelajaran+"</b> tidak ada pengampunya|"
										+"|"
										+"error|"
										+"1_parameter");
									}
							})
							return false;

						//jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
						if (data.isi_pesan_chat_pengguna_choose !== null) { return false; }
						return false;
					}
				})
			} // ./ duplikat mapel
			else if (data[1] == "kelas") {
					var sqls 		= "SELECT kd_kelas_daftar, nama_kelas_daftar FROM kelas_daftar WHERE nama_kelas_daftar REGEXP '"+data[2]+"' ORDER BY nama_kelas_daftar ASC LIMIT 1 OFFSET "+offset;
					connection.query(sqls, function  (err_final,rows){
						if (rows === undefined) { // Jika yang diinputkan selain angka pada pemilihan, misal Huruff
							res.send("Pilihan Tidak Tersedia.</b>|"
										 +"|"
										 +"error|"
										 +"1_parameter")
							return false;
						}
						else if (data[3] < data[4] || data[4] == 0 || rows.length == 0) {
							res.send("Keluar dari pilihan.</b>|"
										 +"|"
										 +"success|"
										 +"1_parameter")
						  return false;
						}
						else {
							var kd_kelas_daftar 	= rows[0].kd_kelas_daftar;
							var nama_kelas_daftar = rows[0].nama_kelas_daftar;

							if (data[0] == "0_daftar_nama_seluruh_siswa_kelas") {
								var sql = "SELECT nis_siswa, nama_siswa FROM nilai_siswa_transaksi_smt1_pengetahuan INNER JOIN data_siswa ON nilai_siswa_transaksi_smt1_pengetahuan.nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan = data_siswa.nis_siswa WHERE kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan REGEXP '"+kd_kelas_daftar+"' GROUP BY nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan ORDER BY nama_siswa ASC";
									connection.query(sql, function (err_cari_kelas_transaksi,rows_nama_seluruh_siswa_kelas){
										if (err_cari_kelas_transaksi) throw err_cari_kelas_transaksi;
										if (rows_nama_seluruh_siswa_kelas.length !== 0) {
											var daftar_nama_seluruh_siswa_kelas	=	[]
											for (var i = 0; i < rows_nama_seluruh_siswa_kelas.length; i++) {
												var no = i + 1;
												daftar_nama_seluruh_siswa_kelas.push('<br>'+no+'. <b>('+rows_nama_seluruh_siswa_kelas[i].nis_siswa+')</b> '+rows_nama_seluruh_siswa_kelas[i].nama_siswa);
											}
											var daftar_nama_seluruh_siswa_kelas = JSON.stringify(daftar_nama_seluruh_siswa_kelas)
											var daftar_nama_seluruh_siswa_kelas = daftar_nama_seluruh_siswa_kelas.replace(/[^a-zA-Z0-9.\s+<>:='(_)/&#-]/g, "")
											res.send('Daftar seluruh nama siswa kelas <b>'+nama_kelas_daftar+'</b> adalah : <br>'+daftar_nama_seluruh_siswa_kelas+"|"
											+"|"
											+"success|"
											+"1_parameter");
											return false;
										}
										else {
											res.send("Kelas <b>"+nama_kelas_daftar+"</b> tidak ada siswanya.|"
											+"|"
											+"error|"
											+"1_parameter");
										}
								})
							}
							else {
								var sql = "SELECT * FROM mata_pelajaran_transaksi INNER JOIN data_pegawai ON mata_pelajaran_transaksi.nip_pegawai_mata_pelajaran_transaksi = data_pegawai.nip_pegawai INNER JOIN mata_pelajaran ON mata_pelajaran.kd_mata_pelajaran = mata_pelajaran_transaksi.kd_mata_pelajaran_transaksi WHERE kd_kelas_daftar_mata_pelajaran_transaksi REGEXP '"+kd_kelas_daftar+"' ORDER BY kd_kelas_daftar_mata_pelajaran_transaksi ASC";
									connection.query(sql, function (err,rows){
										if (err) throw err;
										var daftar_mapel_dan_pengampu_mapel_per_kelas	=	[]
										for (var i = 0; i < rows.length; i++) {
											var no = i + 1;
											daftar_mapel_dan_pengampu_mapel_per_kelas.push('<br><br>'+no+'. Data ke -'+no+'<br> <b>Nama Mata Pelajaran</b> : '+rows[i].nama_mata_pelajaran+' <br><b>Nama Pengampu</b> : '+rows[i].nama_pegawai);
										}
										var daftar_mapel_dan_pengampu_mapel_per_kelas = JSON.stringify(daftar_mapel_dan_pengampu_mapel_per_kelas)
										var daftar_mapel_dan_pengampu_mapel_per_kelas = daftar_mapel_dan_pengampu_mapel_per_kelas.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
										if (daftar_mapel_dan_pengampu_mapel_per_kelas !== "") {
											res.send('Pengampu mata pelajaran kelas <b>'+nama_kelas_daftar+'</b> adalah : '+daftar_mapel_dan_pengampu_mapel_per_kelas+"|"
											+"|"
											+"success|"
											+"1_parameter");
										}
										else {
											res.send("Pengampu mata pelajaran kelas <b>"+nama_kelas_daftar+"</b> tidak ada pengampunya|"
											+"|"
											+"error|"
											+"1_parameter");
										}
								})
								return false;
							}
							//jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
							if (data.isi_pesan_chat_pengguna_choose !== null) { return false; }
							return false;
						}
					})
			} // ./ duplikat kelas
		}
		else if (data.isi_pesan_chat_pengguna_choose.length == 0 && data.isi_pesan_chat_pengguna_blank_name.length == 0) {
			// var parameter =	[req.session.jabatan];
      // development
			var parameter =	['pegawai'];
			var sqls 		= "SELECT * FROM pesan_chat_bot_kosa_kata_siswa WHERE chat_privilege_kosa_kata REGEXP ?";
			connection.query(sqls, parameter, function  (err,rows){
				if (err) throw err;
			    for (var i = 0; i < rows.length; i++){
			      var kosa_kata = rows[i].kosa_kata_pesan_chat_bot_kosa_kata_siswa;
		        var regex = new RegExp(kosa_kata, 'gi');
		        var ress = parse.match(regex);
		        if (ress !== null) { var res1 = ress; }
					}
				  if (res1 === undefined) {
				    var sql = "SELECT kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa WHERE chat_privilege_kosa_kata REGEXP ? GROUP BY grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa ORDER BY kosa_kata_pesan_chat_bot_kosa_kata_siswa ASC";
				    connection.query(sql, parameter, function  (err_rows,rows){
						// console.log(rows)
						// return false
				      var g = []
				      var h = []
							var p = parse.replace(/(pegawai|siswa|dan)/gi, "")
							var p = p.split(" ")
							var p = p.filter(function(n){ return n != '' });
							for (var i = 0; i < p.length; i++) {
							  for (var j = 0; j < rows.length; j++) {
							    var r = new RegExp(p[i], 'gi')
							    var m = rows[j].kosa_kata_pesan_chat_bot_kosa_kata_siswa.match(r)
							    if (m !== null) { g.push(rows[j].kosa_kata_pesan_chat_bot_kosa_kata_siswa) }
							  }
							  // console.log('===================');
							}
							var g = g.filter(function(elem, index, self) { return index === self.indexOf(elem); }) // hapus array duplikat
				      for (var i = 0; i < g.length; i++) {
				        var j = i+1; h.push(j+'. '+g[i]) }
							if (h.length === 0) {
									res.send("Mohon maaf, maksud dari pertanyaan '<b>"+pesan+"</b>' apa ya ? <br>Kami tidak memahami <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
												 +"|"
												 +"error|"
												 +"1_parameter");
				 			return false;
							}
				      var g = JSON.stringify(h);
				      var h	= g.replace(/[^0-9a-z,.\s]/gi, "")
				      var i	= h.replace(/,/gi, "<br>")
				      var j= i.split(",");
				      var k = j.filter(function(elem, index, self) { return index === self.indexOf(elem); }) //hapus data array yang duplikat
				      res.send("Mohon maaf, kami tidak memahami <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
				              +"Mungkin <b>kata kunci</b> yang kamu cari ada disini : <br><b>"+k+"</b>|"
				              +"error|"
				              +"2_parameters");
				    })
				  } // ./NOT FOUND kosa kata dan SUGGEST ksoa kata siswa
					else {
						// MENCARI GRUP KOSA KATA (SISWA)
				    var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa FROM pesan_chat_bot_kosa_kata_siswa WHERE kosa_kata_pesan_chat_bot_kosa_kata_siswa = '"+res1[0]+"'";
				    connection.query(sql, function  (err_grup_kosa_kata,rows_grup_kosa_kata){
				      if (err_grup_kosa_kata) throw err_grup_kosa_kata;
				      var grup_kosa_kata_final 	= rows_grup_kosa_kata[0].grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa;
							var grup_split 						= grup_kosa_kata_final.split("_");
							var grup								 	= grup_split[grup_split.length - 1]; //OUTPUT : no_handphone_siswa | 'siswa'
							var grup2									=	grup_split[grup_split.length - 2]; //OUTPUT : no_handphone_siswa | 'handphone'
							var user_bukan = pesan.match(/(pegawai|siswa)/gi);
							if (user_bukan !== null) {
								// Bertanya berkaitan dengan guru maupun siswa
								// else if (grup == "siswa" || grup == "pegawai") { //JIKA YANG DICARI DAFTAR KELAS DAN WALI KELAS
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
									              +"1_parameter");
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
									              +"1_parameter");
												return false;
										})
										})
										})
										}
									}
									else if (grup_kosa_kata_final == "0_daftar_nama_seluruh_siswa_kelas") {
										var sql = "SELECT nama_kelas_daftar FROM kelas_daftar ORDER BY nama_kelas_daftar ASC";
											connection.query(sql,function (err_cari_nama_kelas,rows_cari_nama_kelas){
											if (err_cari_nama_kelas) throw err_cari_nama_kelas;
											for (var i = 0; i < rows_cari_nama_kelas.length; i++) {
												var nama1 = rows_cari_nama_kelas[i].nama_kelas_daftar;
												var nama4 = nama1.split(" ");
												var nama2 = new RegExp(nama4[0], 'gi');
												var match	= parse.match(nama2);
												if (match !== null) {
													var parse2 = parse.split(" ");
													var index = parse2.indexOf(match[0]); //nomor letak array heryani
													var splice = parse2.splice(index);
													var hps_arr_kosong = splice.filter(function(str) {
														return /\S/.test(str);
													}); //fungsi menghapus array yg kosong : BENTUK OBJECT
													var splice2= hps_arr_kosong.join().replace(/,/g, ' ');
													hps_arr_kosong.push("null");
												}
											}
											// NOT FOUND 3 nama kelas
											if (index === undefined) {
												res.send("Mohon maaf, <b>nama kelas</b> yang dicari tidak ditemukan.<br>|"
																+"Masukan Nama Kelas : |"
																+"error|"
																+"blank_name|"
																+grup_kosa_kata_final+'>kelas');
												return false;
											}
											var arr = [];
											for (var j = 0; j < rows_cari_nama_kelas.length; j++) {
												var nama3 = rows_cari_nama_kelas[j].nama_kelas_daftar;
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
												for (var j = 0; j < rows_cari_nama_kelas.length; j++) {
													var regex5 = new RegExp(nama_fix2, 'gi');
													var regex6 = rows_cari_nama_kelas[j].nama_kelas_daftar.match(regex5);
													if (regex6 !== null) {
														if (nama_fix2 === "") { return false }
														else {
															var selects 								= [regex6[0]];
															var sql 										= "SELECT COUNT(*) FROM kelas_daftar WHERE nama_kelas_daftar REGEXP ?";
															connection.query(sql, selects, function  (err_count_nama_kelas,rows_count_nama_kelas){
																if (err_count_nama_kelas) throw err_count_nama_kelas;
																var count_nama_kelas = JSON.stringify(rows_count_nama_kelas)
																var count_nama_kelas = count_nama_kelas.replace(/[^0-9]+/, "")
																var count_nama_kelas = count_nama_kelas.replace(/[^0-9]+/, "")
																if (count_nama_kelas == 1) {
																	var sql = "SELECT kd_kelas_daftar FROM kelas_daftar WHERE nama_kelas_daftar REGEXP '"+regex6[0]+"' ORDER BY nama_kelas_daftar ASC";
																	  connection.query(sql, function (err_cari_kd_kelas,rows_cari_kd_kelas){
																			var kd_kelas_daftar = rows_cari_kd_kelas[0].kd_kelas_daftar;
																			var sql = "SELECT nis_siswa, nama_siswa FROM nilai_siswa_transaksi_smt1_pengetahuan INNER JOIN data_siswa ON nilai_siswa_transaksi_smt1_pengetahuan.nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan = data_siswa.nis_siswa WHERE kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan REGEXP '"+kd_kelas_daftar+"' GROUP BY nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan ORDER BY nama_siswa ASC";
																				connection.query(sql, function (err_cari_kelas_transaksi,rows_nama_seluruh_siswa_kelas){
																					if (err_cari_kelas_transaksi) throw err_cari_kelas_transaksi;
																					if (rows_nama_seluruh_siswa_kelas.length !== 0) {
																						var daftar_nama_seluruh_siswa_kelas	=	[]
																						for (var i = 0; i < rows_nama_seluruh_siswa_kelas.length; i++) {
																							var no = i + 1;
																							daftar_nama_seluruh_siswa_kelas.push('<br>'+no+'. <b>('+rows_nama_seluruh_siswa_kelas[i].nis_siswa+')</b> '+rows_nama_seluruh_siswa_kelas[i].nama_siswa);
																						}
																						var daftar_nama_seluruh_siswa_kelas = JSON.stringify(daftar_nama_seluruh_siswa_kelas)
											                      var daftar_nama_seluruh_siswa_kelas = daftar_nama_seluruh_siswa_kelas.replace(/[^a-zA-Z0-9.\s+<>:='(_)/&#-]/g, "")
																						res.send('Daftar seluruh nama siswa kelas <b>'+regex6[0]+'</b> adalah : <br>'+daftar_nama_seluruh_siswa_kelas+"|"
																						+"|"
																						+"success|"
																						+"1_parameter");
																						return false;
																					}
																					else {
																						res.send("Kelas <b>"+nama_kelas_daftar+"</b> tidak ada siswanya.|"
																						+"|"
																						+"error|"
																						+"1_parameter");
																					}
																			})
																	})
																	return false;
																}
																else if (count_nama_kelas > 1) {
																	var sql = "SELECT nama_kelas_daftar FROM kelas_daftar WHERE nama_kelas_daftar REGEXP '"+regex6[0]+"' ORDER BY nama_kelas_daftar ASC";
																	  connection.query(sql, selects, function (err_cari_kd_kelas,rows_cari_kd_kelas){
																			var daftar_duplikasi_nama_kelas	=	[]
																			for (var i = 0; i < rows_cari_kd_kelas.length; i++) {
																				var no = i + 1;
																				daftar_duplikasi_nama_kelas.push('<br>'+no+'. '+rows_cari_kd_kelas[i].nama_kelas_daftar);
																			}
																			daftar_duplikasi_nama_kelas.push("<br><b>"+(no+1)+"</b> > lebih. <b>Keluar<b>")
																			var daftar_duplikasi_nama_kelas = JSON.stringify(daftar_duplikasi_nama_kelas)
																			var daftar_duplikasi_nama_kelas = daftar_duplikasi_nama_kelas.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
																			res.send('Terdapat <b>duplikasi nama kelas</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br>'+daftar_duplikasi_nama_kelas+"|"
																			+"Coba pilih nomor yang telah disediakan : |"
																			+"success|"
																			+"duplicate_name|"
																			+grup_kosa_kata_final+'>kelas>'+regex6[0]+'>'+count_nama_kelas);
																		})
																		return false;
																}
															});
															return false;
														} }
													else {
													} } }
											});
										return false;
									}
	                // Bertanya tentang profile pegawai atau siswa
									else {
										var jabatan_cari = pesan.match(/(pegawai|siswa)/gi);
							      if (jabatan_cari == 'pegawai') {
											var sql = "SELECT nama_pegawai,jabatan_pegawai FROM data_pegawai ORDER BY nama_pegawai ASC";
											  connection.query(sql,function (err_cari_nama,rows_cari_nama){
											  if (err_cari_nama) throw err_cari_nama;
											  for (var i = 0; i < rows_cari_nama.length; i++) {
											    var nama1 = rows_cari_nama[i].nama_pegawai;
											    var nama4 = nama1.split(" ");
											    var nama2 = new RegExp(nama4[0], 'gi');
											    var match	= parse.match(nama2);
											    if (match !== null) {
											      var parse2 = parse.split(" ");
											      var index = parse2.indexOf(match[0]); //nomor letak array heryani
											      var splice = parse2.splice(index);
											      var hps_arr_kosong = splice.filter(function(str) {
											        return /\S/.test(str);
											      }); //fungsi menghapus array yg kosong : BENTUK OBJECT
											      var splice2 = hps_arr_kosong.join().replace(/,/g, ' ');
											      hps_arr_kosong.push("null");
											    }
											  }
											  // NOT FOUND 3 pegawai
											  if (index === undefined) {
													res.send("Mohon maaf, <b>nama pegawai</b> yang dicari tidak ditemukan.<br>|"
																	+"Masukan Nama Pegawai : |"
																	+"error|"
																	+"blank_name|"
																	+grup_kosa_kata_final+'>pegawai');
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
											          var sql 										= "SELECT COUNT(*) FROM data_pegawai WHERE nama_pegawai REGEXP ?";
											          connection.query(sql, selects, function  (err_final,rows_count_pegawai){
											            var count_pegawai = JSON.stringify(rows_count_pegawai)
											            var count_pegawai = count_pegawai.replace(/[^0-9]+/, "")
											            var count_pegawai = count_pegawai.replace(/[^0-9]+/, "")
											            if (count_pegawai == 1) {
	                                  // Variabel menghubungkan antara tabel pegawai dan mata pelajaran
																		var grup 									= grup_kosa_kata_final.split("_");
																		var grup								 	= grup[grup.length - 1];
																		if (grup == "mapel") { var grup	=	"nama_mata_pelajaran" }
																		else { var grup	=	grup_kosa_kata_final; }
											              var selects 								= [grup, regex6[0]];
											              var sql 										= "SELECT ??, nip_pegawai FROM data_pegawai INNER JOIN mata_pelajaran ON data_pegawai.kd_mata_pelajaran_pegawai = mata_pelajaran.kd_mata_pelajaran WHERE nama_pegawai REGEXP ? ORDER BY nama_pegawai ASC";
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
											                  res.send("Mohon maaf, data yang kamu minta masih kosong.|"
											                          +"|"
											                          +"error|"
											                          +"1_parameter");
											                  return false
											                }
											                else {
											                  res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[0].nip_pegawai+"' style='width:170px'></img>|"
											                  +final+"|"
											                  +"success|"
											                  +"2_parameters");
											                  return false;
											                }
											              });// ./rows
											            }
											            else if (count_pegawai > 1) {
											              var selects = [regex6[0]];
											              var sql 		= "SELECT nama_pegawai, nip_pegawai FROM data_pegawai WHERE nama_pegawai REGEXP ? ORDER BY nama_pegawai ASC";
											              connection.query(sql, selects, function  (err_final,rows){
											                var nama_nip_pegawai = JSON.stringify(rows)
											                var nama_nip_baru = []
											                for (var i = 0; i < rows.length; i++) {
											                  var j = i+1;
											                  nama_nip_baru.push("<br><b>"+j+"</b>. "+rows[i].nama_pegawai+"<br><img src='http://localhost/_Project/man2/frontend/img/foto/pegawai/"+rows[i].nip_pegawai+"' style='width:70px'></img>")
											                }
											                nama_nip_baru.push("<br><b>"+(j+1)+"</b> > lebih. <b>Keluar<b>")
											                var nama_nip_baru = JSON.stringify(nama_nip_baru)
											                var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
																			var grup_duplikat =	jabatan_cari;
											                res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nip_baru+"|"
											                        +"Coba pilih nomor yang telah disediakan : |"
											                        +"success|"
											                        +"duplicate_name|"
											                        +grup_kosa_kata_final+'>'+grup_duplikat+'>'+regex6[0]+'>'+count_pegawai);
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
											var sql = "SELECT nama_siswa,jabatan_siswa FROM data_siswa ORDER BY nama_siswa ASC";
								        connection.query(sql,function (err_cari_nama,rows_cari_nama){
								        if (err_cari_nama) throw err_cari_nama;
								        for (var i = 0; i < rows_cari_nama.length; i++) {
								          var nama1 = rows_cari_nama[i].nama_siswa;
								          var nama4 = nama1.split(" ");
								          var nama2 = new RegExp(nama4[0], 'gi');
								          var match	= parse.match(nama2);
								          if (match !== null) {
								            var parse2 = parse.split(" ");
								            var index = parse2.indexOf(match[0]); //nomor letak array heryani
								            var splice = parse2.splice(index);
								            var hps_arr_kosong = splice.filter(function(str) {
								              return /\S/.test(str);
								            }); //fungsi menghapus array yg kosong : BENTUK OBJECT
								            var splice2 = hps_arr_kosong.join().replace(/,/g, ' ');
								            hps_arr_kosong.push("null");
								          }
								        }
					              // NOT FOUND 3 SISWA
								        if (index === undefined) {
													res.send("Mohon maaf, <b>nama siswa</b> yang dicari tidak ditemukan.<br>|"
																	+"Masukan Nama Siswa : |"
																	+"error|"
																	+"blank_name|"
																	+grup_kosa_kata_final+'>siswa');
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
								                var sql 										= "SELECT COUNT(*) FROM data_siswa WHERE nama_siswa REGEXP ?";
								                connection.query(sql, selects, function  (err_final,rows_count_siswa){
								                  var count_siswa = JSON.stringify(rows_count_siswa)
								                  var count_siswa = count_siswa.replace(/[^0-9]+/, "")
								                  var count_siswa = count_siswa.replace(/[^0-9]+/, "")
								                  if (count_siswa == 1) {
								                    var selects 								= [grup_kosa_kata_final, regex6[0]];
								                    var sql 										= "SELECT ??, nis_siswa FROM data_siswa WHERE nama_siswa REGEXP ? ORDER BY nama_siswa ASC";
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
										                            +"error|"
										                            +"2_parameters");
																				return false
																			}
																			else {
																				res.send("<img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
																				+final+"|"
																				+"success|"
																				+"2_parameters");
																				return false;
																			}
								                    });// ./rows
								                  }
								                  else if (count_siswa > 1) {
								                    var selects = [regex6[0]];
								                    var sql 		= "SELECT nama_siswa, nis_siswa FROM data_siswa WHERE nama_siswa REGEXP ? ORDER BY nama_siswa ASC";
								                    connection.query(sql, selects, function  (err_final,rows){
								                      var nama_nis_siswa = JSON.stringify(rows)
								                      var nama_nis_baru = []
								                      for (var i = 0; i < rows.length; i++) {
								                        var j = i+1;
								                        nama_nis_baru.push("<br><b>"+j+"</b>. "+rows[i].nama_siswa+"<br><img src='http://localhost/_Project/man2/frontend/img/foto/siswa/"+rows[i].nis_siswa+"' style='width:70px'></img>")
								                      }
																			nama_nis_baru.push("<br><b>"+(j+1)+"</b> > lebih. <b>Keluar<b>")
								                      var nama_nis_baru = JSON.stringify(nama_nis_baru)
																			// console.log(grup_kosa_kata_final+'>'+regex6[0]+'>'+count_siswa);
								                      var nama_nis_baru = nama_nis_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
																			var grup_duplikat =	jabatan_cari;
								                      res.send("Terdapat <b>duplikasi nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br><br>"+nama_nis_baru+"|"
								                              +"Coba pilih nomor yang telah disediakan : |"
								                              +"success|"
								                              +"duplicate_name|"
								                              +grup_kosa_kata_final+'>'+grup_duplikat+'>'+regex6[0]+'>'+count_siswa);
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
								// }
							}
							else {
								if (grup == "pembayaran") {
									var sql = "SELECT * FROM pembayaran INNER JOIN pembayaran_daftar on pembayaran.kd_pembayaran = pembayaran_daftar.kd_pembayaran_daftar WHERE nis_siswa_pembayaran='1088' ORDER BY lunas_pembayaran DESC"; // userID
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
						              +"2_parameters");
									return false;
								})
								}
								else if (grup == "kelas") { //JIKA YANG DICARI TERKAIT DENGAN KELAS
									if (grup2 == "wali") { // SELURUH KELAS DAN WALI KELAS
										var sql = "SELECT * FROM kelas_transaksi INNER JOIN data_pegawai on kelas_transaksi.nip_pegawai_wali_kelas_transaksi = data_pegawai.nip_pegawai ORDER BY kd_kelas_daftar_kelas_transaksi ASC";
								    connection.query(sql, function  (err_rows,rows){
										var sql = "SELECT kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan, COUNT(DISTINCT nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan) AS cnt FROM nilai_siswa_transaksi_smt1_pengetahuan GROUP BY kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan ORDER BY kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan ASC";
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
							              +"1_parameter");
										return false;
										})
										})
									}
									else if (grup2 == "pengampu") { //SELURUH MATA PELAJARAN PER KELAS DAN PENGAMPUNYA
										var sql = "SELECT nama_kelas_daftar FROM kelas_daftar ORDER BY nama_kelas_daftar ASC";
											connection.query(sql,function (err_cari_nama_kelas,rows_cari_nama_kelas){
											if (err_cari_nama_kelas) throw err_cari_nama_kelas;
											for (var i = 0; i < rows_cari_nama_kelas.length; i++) {
												var nama1 = rows_cari_nama_kelas[i].nama_kelas_daftar;
												var nama4 = nama1.split(" ");
												var nama2 = new RegExp(nama4[0], 'gi');
												var match	= parse.match(nama2);
												if (match !== null) {
													var parse2 = parse.split(" ");
													var index = parse2.indexOf(match[0]); //nomor letak array heryani
													var splice = parse2.splice(index);
													var hps_arr_kosong = splice.filter(function(str) {
														return /\S/.test(str);
													}); //fungsi menghapus array yg kosong : BENTUK OBJECT
													var splice2= hps_arr_kosong.join().replace(/,/g, ' ');
													hps_arr_kosong.push("null");
												}
											}
											// NOT FOUND 3 nama kelas
											if (index === undefined) {
												res.send("Mohon maaf, <b>nama kelas</b> yang dicari tidak ditemukan.<br>|"
																+"Masukan Nama Kelas : |"
																+"error|"
																+"blank_name|"
																+grup_kosa_kata_final+'>kelas');
												return false;
											}
											var arr = [];
											for (var j = 0; j < rows_cari_nama_kelas.length; j++) {
												var nama3 = rows_cari_nama_kelas[j].nama_kelas_daftar;
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
												for (var j = 0; j < rows_cari_nama_kelas.length; j++) {
													var regex5 = new RegExp(nama_fix2, 'gi');
													var regex6 = rows_cari_nama_kelas[j].nama_kelas_daftar.match(regex5);
													if (regex6 !== null) {
														if (nama_fix2 === "") { return false }
														else {
															var selects 								= [regex6[0]];
															var sql 										= "SELECT COUNT(*) FROM kelas_daftar WHERE nama_kelas_daftar REGEXP ?";
															connection.query(sql, selects, function  (err_count_nama_kelas,rows_count_nama_kelas){
																if (err_count_nama_kelas) throw err_count_nama_kelas;
																var count_nama_kelas = JSON.stringify(rows_count_nama_kelas)
																var count_nama_kelas = count_nama_kelas.replace(/[^0-9]+/, "")
																var count_nama_kelas = count_nama_kelas.replace(/[^0-9]+/, "")
																if (count_nama_kelas == 1) {
																	var sql = "SELECT kd_kelas_daftar FROM kelas_daftar WHERE nama_kelas_daftar REGEXP '"+regex6[0]+"' ORDER BY nama_kelas_daftar ASC";
																	  connection.query(sql, function (err_cari_kd_kelas,rows_cari_kd_kelas){
																			var kd_kelas_daftar = rows_cari_kd_kelas[0].kd_kelas_daftar;
                                      // INNER JOIN 3 TABLES
																			var sql = "SELECT * FROM mata_pelajaran_transaksi INNER JOIN data_pegawai ON mata_pelajaran_transaksi.nip_pegawai_mata_pelajaran_transaksi = data_pegawai.nip_pegawai INNER JOIN mata_pelajaran ON mata_pelajaran.kd_mata_pelajaran = mata_pelajaran_transaksi.kd_mata_pelajaran_transaksi WHERE kd_kelas_daftar_mata_pelajaran_transaksi REGEXP '"+kd_kelas_daftar+"' ORDER BY kd_kelas_daftar_mata_pelajaran_transaksi ASC";
																				connection.query(sql, function (err_cari_kelas_transaksi,rows_cari_kelas_transaksi){
																					if (err_cari_kelas_transaksi) throw err_cari_kelas_transaksi;
																					if (rows_cari_kelas_transaksi.length !== 0) {
																						var daftar_mapel_dan_pengampu_mapel_per_kelas	=	[]
																						for (var i = 0; i < rows_cari_kelas_transaksi.length; i++) {
																							var no = i + 1;
																							daftar_mapel_dan_pengampu_mapel_per_kelas.push('<br><br>'+no+'. Data ke -'+no+'<br> <b>Nama Mata Pelajaran</b> : '+rows_cari_kelas_transaksi[i].nama_mata_pelajaran+' <br><b>Nama Pengampu</b> : '+rows_cari_kelas_transaksi[i].nama_pegawai);
																						}
																						var daftar_mapel_dan_pengampu_mapel_per_kelas = JSON.stringify(daftar_mapel_dan_pengampu_mapel_per_kelas)
											                      var daftar_mapel_dan_pengampu_mapel_per_kelas = daftar_mapel_dan_pengampu_mapel_per_kelas.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
																						// console.log(daftar_mapel_dan_pengampu_mapel_per_kelas);
																						res.send('Pengampu mata pelajaran kelas <b>'+regex6[0]+'</b> adalah : '+daftar_mapel_dan_pengampu_mapel_per_kelas+"|"
																						+"|"
																						+"success|"
																						+"1_parameter");
																						return false;
																					}
																					else {
																						res.send("Pengampu mata pelajaran kelas <b>"+regex6[0]+"</b> tidak ada pengampunya|"
																						+"|"
																						+"error|"
																						+"1_parameter");
																					}
																			})
																	})
																	return false;
																}
																else if (count_nama_kelas > 1) {
																	var parameter = [regex6[0]];
																	var sql = "SELECT nama_kelas_daftar FROM kelas_daftar WHERE nama_kelas_daftar REGEXP ? ORDER BY nama_kelas_daftar ASC";
																	  connection.query(sql, parameter, function (err_cari_kd_kelas,rows_cari_kd_kelas){
																			var daftar_duplikasi_nama_kelas	=	[]
																			for (var i = 0; i < rows_cari_kd_kelas.length; i++) {
																				var no = i + 1;
																				daftar_duplikasi_nama_kelas.push('<br>'+no+'. '+rows_cari_kd_kelas[i].nama_kelas_daftar);
																			}
																			daftar_duplikasi_nama_kelas.push("<br><b>"+(no+1)+"</b> > lebih. <b>Keluar<b>")
																			var daftar_duplikasi_nama_kelas = JSON.stringify(daftar_duplikasi_nama_kelas)
																			var daftar_duplikasi_nama_kelas = daftar_duplikasi_nama_kelas.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
																			res.send('Terdapat <b>duplikasi nama kelas</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br>'+daftar_duplikasi_nama_kelas+"|"
																			+"Coba pilih nomor yang telah disediakan : |"
																			+"success|"
																			+"duplicate_name|"
																			+grup_kosa_kata_final+'>kelas>'+regex6[0]+'>'+count_nama_kelas);
																		})
																		return false;
																}
															});
															return false;
														} }
													else {
													} } }
											});
										return false;
									}
								}
								else if (grup == "mapel") { // Jika yang dicari daftar seluruh pengampu Contoh : Bahasa Indonesia
									var sql = "SELECT nama_mata_pelajaran FROM mata_pelajaran ORDER BY nama_mata_pelajaran ASC";
										connection.query(sql,function (err_cari_nama_mapel,rows_cari_nama_mapel){
										if (err_cari_nama_mapel) throw err_cari_nama_mapel;
										for (var i = 0; i < rows_cari_nama_mapel.length; i++) {
											var nama1 = rows_cari_nama_mapel[i].nama_mata_pelajaran;
											var nama4 = nama1.split(" ");
											var nama2 = new RegExp(nama4[0], 'gi');
											var match	= parse.match(nama2);
											if (match !== null) {
												var parse2 = parse.split(" ");
												var index = parse2.indexOf(match[0]); //nomor letak array heryani
												var splice = parse2.splice(index);
												var hps_arr_kosong = splice.filter(function(str) {
													return /\S/.test(str);
												}); //fungsi menghapus array yg kosong : BENTUK OBJECT
												var splice2= hps_arr_kosong.join().replace(/,/g, ' ');
												hps_arr_kosong.push("null");
											}
										}
										// NOT FOUND 3 nama mata pelajaran
										if (index === undefined) {
											res.send("Mohon maaf, <b>nama mata pelajaran</b> yang dicari tidak ditemukan.<br>|"
															+"Masukan Nama Mata Pelajaran : |"
															+"error|"
															+"blank_name|"
															+grup_kosa_kata_final+'>mapel');
											return false;
										}
										var arr = [];
										for (var j = 0; j < rows_cari_nama_mapel.length; j++) {
											var nama3 = rows_cari_nama_mapel[j].nama_mata_pelajaran;
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
											for (var j = 0; j < rows_cari_nama_mapel.length; j++) {
												var regex5 = new RegExp(nama_fix2, 'gi');
												var regex6 = rows_cari_nama_mapel[j].nama_mata_pelajaran.match(regex5);
												if (regex6 !== null) {
													if (nama_fix2 === "") { return false }
													else {
														var selects 								= [regex6[0]];
														var sql 										= "SELECT COUNT(*) FROM mata_pelajaran WHERE nama_mata_pelajaran REGEXP ?";
														connection.query(sql, selects, function  (err_count_nama_mapel,rows_count_nama_mapel){
															if (err_count_nama_mapel) throw err_count_nama_mapel;
															var count_nama_mapel = JSON.stringify(rows_count_nama_mapel)
															var count_nama_mapel = count_nama_mapel.replace(/[^0-9]+/, "")
															var count_nama_mapel = count_nama_mapel.replace(/[^0-9]+/, "")
															if (count_nama_mapel == 1) {
																var sql = "SELECT kd_mata_pelajaran FROM mata_pelajaran WHERE nama_mata_pelajaran REGEXP '"+regex6[0]+"' ORDER BY nama_mata_pelajaran ASC";
																  connection.query(sql, function (err_cari_kd_mapel,rows_cari_kd_mapel){
																		var kd_mata_pelajaran = rows_cari_kd_mapel[0].kd_mata_pelajaran;
																		var sql = "SELECT * FROM mata_pelajaran_transaksi INNER JOIN data_pegawai ON mata_pelajaran_transaksi.nip_pegawai_mata_pelajaran_transaksi = data_pegawai.nip_pegawai WHERE kd_mata_pelajaran_transaksi REGEXP '"+kd_mata_pelajaran+"' ORDER BY kd_kelas_daftar_mata_pelajaran_transaksi ASC";
																		  connection.query(sql, function (err_cari_mapel_transaksi,rows_cari_mapel_transaksi){
																				if (rows_cari_mapel_transaksi.length !== 0) {
																					var daftar_kelas_pengampu_mapel	=	[]
																					for (var i = 0; i < rows_cari_mapel_transaksi.length; i++) {
																						var no = i + 1;
																						daftar_kelas_pengampu_mapel.push('<br><br>'+no+'. Data ke -'+no+'<br> <b>Nama Kelas</b> : '+rows_cari_mapel_transaksi[i].kd_kelas_daftar_mata_pelajaran_transaksi+' <br><b>Nama Pengampu</b> : '+rows_cari_mapel_transaksi[i].nama_pegawai);
																					}
																					var daftar_kelas_pengampu_mapel = JSON.stringify(daftar_kelas_pengampu_mapel)
										                      var daftar_kelas_pengampu_mapel = daftar_kelas_pengampu_mapel.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
																					// console.log(daftar_kelas_pengampu_mapel);
																					res.send('Pengampu mata pelajaran <b>'+regex6[0]+'</b> seluruh kelas adalah : '+daftar_kelas_pengampu_mapel+"|"
																					+"|"
																					+"success|"
																					+"1_parameter");
																					return false;
																				}
																				else {
																					res.send("Pengampu mata pelajaran dengan nama mata pelajaran <b>"+regex6[0]+"</b> tidak ada pengampunya|"
																					+"|"
																					+"error|"
																					+"1_parameter");
																				}
																		})
																})
																return false;
															}
															else if (count_nama_mapel > 1) {
																var parameter = [regex6[0]]
																var sql = "SELECT nama_mata_pelajaran FROM mata_pelajaran WHERE nama_mata_pelajaran REGEXP ? ORDER BY nama_mata_pelajaran ASC";
																  connection.query(sql, parameter, function (err_cari_kd_mapel,rows_cari_kd_mapel){
																		var daftar_duplikasi_nama_mapel	=	[]
																		for (var i = 0; i < rows_cari_kd_mapel.length; i++) {
																			var no = i + 1;
																			daftar_duplikasi_nama_mapel.push('<br>'+no+'. '+rows_cari_kd_mapel[i].nama_mata_pelajaran);
																		}
																		daftar_duplikasi_nama_mapel.push("<br><b>"+(no+1)+"</b> > lebih. <b>Keluar<b>")
																		var daftar_duplikasi_nama_mapel = JSON.stringify(daftar_duplikasi_nama_mapel)
																		var daftar_duplikasi_nama_mapel = daftar_duplikasi_nama_mapel.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
																		res.send('Terdapat <b>duplikasi nama mata pelajaran</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br>'+daftar_duplikasi_nama_mapel+"|"
																		+"Coba pilih nomor yang telah disediakan : |"
																		+"success|"
																		+"duplicate_name|"
																		+grup_kosa_kata_final+'>'+grup+'>'+regex6[0]+'>'+count_nama_mapel);
																	})
																	return false;
															}
														});
														return false;
													} }
												else {
												} } }
										});
									return false;
								}
							}
				      }); // ./grup_kosa_kata_final
				  }
				return false;
			})
		}
		else {
			console.log("error");
		}
  }); // ./req.getConnection(function (err, connection)
};
