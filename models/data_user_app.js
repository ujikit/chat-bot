var bcrypt = require('bcrypt-nodejs');
var _ = require('lodash');
var sanitizer = require('sanitizer');// Handling Input Xss
// node-datetime
var dateTime = require('node-datetime');
var dt = dateTime.create(); dt.format('m/d/Y H:M:S');
// ./node-datetime

// Connection
var mysql      = require('mysql');
var connection = mysql.createConnection({
	host : "localhost",
	user : "root",
	password : "",
	database : "man2_chatbot"
});
// ./Connection

// VIEWS
exports.dashboard_user = function(req, res){
	var userId = req.session.userId;
	if(userId == null){ res.redirect("/"); return 0; }
	if (req.session.jabatan == "siswa") {
		var sql = "SELECT * FROM data_siswa WHERE nis_siswa='"+userId+"'"; //userID
		connection.query(sql, function  (err_final,rows){
			if (err_final) throw err_final
			res.render('dashboard.ejs',{session:rows[0].nis_siswa, jabatan:rows[0].jabatan_siswa, nama_pengguna:rows[0].nama_siswa});
		})
	}
	else if (req.session.jabatan == "pegawai") {
		var sql = "SELECT * FROM data_pegawai WHERE nip_pegawai='"+userId+"'"; //userID
		connection.query(sql, function  (err_final,rows){
			res.render('dashboard.ejs',{session:rows[0].nip_pegawai, jabatan:rows[0].jabatan_pegawai, nama_pengguna:rows[0].nama_pegawai});
		})
	}
  // development
	// var nis_siswa = "10888"
	// var jabatan_siswa = "siswa"
	// var nama_siswa = "fauzi"
	// res.render('dashboard.ejs',{session:nis_siswa, jabatan:jabatan_siswa, nama_pengguna:nama_siswa});
};
exports.dashboard_tutorial_video = function(req, res){
	var userId = req.session.userId;
	if(userId == null){ res.redirect("/"); return 0; }
	if (req.session.jabatan == "siswa") {
		var sql 		= "SELECT * FROM data_siswa WHERE nis_siswa='"+userId+"'"; //userID
		connection.query(sql, function  (err_final,rows){
			var sql 		= "SELECT * FROM tutorial_chatbot_video"; //userID
			connection.query(sql, function  (err_chatbot_video,rows_chatbot_video){
			res.render('dashboard_tutorial_video.ejs',{session:rows[0].nis_siswa, jabatan:rows[0].jabatan_siswa, nama_pengguna:rows[0].nama_siswa, rows_chatbot_video:rows_chatbot_video});
		})
		})
	}
	else if (req.session.jabatan == "pegawai") {
		var sql 		= "SELECT * FROM data_pegawai WHERE nip_pegawai='"+userId+"'"; //userID
		connection.query(sql, function  (err_final,rows){
		var sql 		= "SELECT * FROM tutorial_chatbot_video"; //userID
		connection.query(sql, function  (err_chatbot_video,rows_chatbot_video){
			res.render('dashboard_tutorial_video.ejs',{session:rows[0].nip_pegawai, jabatan:rows[0].jabatan_pegawai, nama_pengguna:rows[0].nama_pegawai, rows_chatbot_video:rows_chatbot_video});
		})
		})
	}
  // development
	// var sql 		= "SELECT * FROM data_siswa WHERE nis_siswa='10888'"; //userID
	// connection.query(sql, function  (err_final,rows){
	// 	var sql 		= "SELECT * FROM tutorial_chatbot_video"; //userID
	// 	connection.query(sql, function  (err_chatbot_video,rows_chatbot_video){
	// 	res.render('dashboard_tutorial_video.ejs',{session:rows[0].nis_siswa, jabatan:rows[0].jabatan_siswa, nama_pengguna:rows[0].nama_siswa, rows_chatbot_video:rows_chatbot_video});
	// })
	// })
};

exports.dashboard_tutorial_video_cari = function(req, res){
	var cari_judul_tutorial_video = req.params.id;
	var cari_judul_tutorial_video	= cari_judul_tutorial_video.replace(/_/gi, " ")
	var kode_regex = cari_judul_tutorial_video.match(/[0-9]/gi)
	if (kode_regex !== null) { var sql = "SELECT * FROM tutorial_chatbot_video WHERE kd_tutorial_chatbot_video REGEXP '"+cari_judul_tutorial_video+"'" }
	else if (kode_regex == null) { var sql = "SELECT * FROM tutorial_chatbot_video WHERE nama_tutorial_chatbot_video REGEXP '"+cari_judul_tutorial_video+"'" }
	connection.query(sql, function  (err_cari_video,rows_cari_video){
		if (err_cari_video) throw err_cari_video;
		if (rows_cari_video.length !== 0) {
			var arr_hasil_judul = [];
			for (var i = 0; i < rows_cari_video.length; i++) {
				var no = i + 1;
				arr_hasil_judul.push('\
				<div class="col s12 l4">\
					<p style="font-size:20px;color:#262626;"><b>'+no+'. '+rows_cari_video[i].nama_tutorial_chatbot_video.substring(0, 21)+'</b></p>\
					<video class="responsive-video" controls>\
						<source src="http://192.168.1.129:8888/media/video_tutorial/'+rows_cari_video[i].kd_tutorial_chatbot_video+'.mp4" type="video/mp4">\
					</video>\
				</div>\
				');
			}
			var arr_hasil_judul = JSON.stringify(arr_hasil_judul);
			var arr_hasil_judul	=	arr_hasil_judul.replace(/(\\t|\\|\["|"]|",")/g, '')
			res.send(arr_hasil_judul)
		}
		else if (rows_cari_video.length == 0){
			res.send('\
			<div class="col s12 l12">\
				<p class="center">Video Tutorial yang Kamu Cari Tidak Ditemukan.</p>\
			</div>\
			')
		}
		else {
			console.log("sek");
		}
		return 0;
	})
	return 0;
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
			return 0;
		})
	})
};

// Response Chat
exports.chat_user = function(req,res,next){
  // development
	// var userId = "10888"
	// var jabatan = "siswa"
	var userId = req.session.userId;
	var jabatan =	[req.session.jabatan];
	if(userId == null){ res.redirect("/"); return 0; }
  var input = JSON.parse(JSON.stringify(req.body));
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
		var pesan  	= JSON.stringify(input.isi_pesan_chat_pengguna);
		var parse0 	=	pesan.replace(/[!?]/gi, "");
		var parsing	= JSON.parse(parse0);

		if (data.isi_pesan_chat_pengguna_choose.length >= 1) {
			if (data.isi_pesan_chat_pengguna.match(/^([a-zA-Z\D]|\d\w|\d.+\w|\d\D|\d.+\D)/g)) {
				res.send("Pilihan Tidak Tersedia.</b>|"
							 +"|"
							 +"error|"
							 +"1_parameter")
				return 0
			}
			var data = data.isi_pesan_chat_pengguna_choose+data.isi_pesan_chat_pengguna;
			var data = data.split(">") // [ 'nama_pegawai', 'pegawai', 'NUR', '2', '1' ]
			var offset = data[4]-1;
			var grup =	data[0]; // grup kosa kata
			if (data[1] == "pegawai") {
				if (grup == "nama_mata_pelajaran_pegawai") {
					var grup	=	grup.replace(/_pegawai/gi, "");
				}
				var sqls 		= "SELECT "+grup+", nip_pegawai FROM data_pegawai INNER JOIN mata_pelajaran ON data_pegawai.kd_mata_pelajaran_pegawai = mata_pelajaran.kd_mata_pelajaran WHERE nama_pegawai REGEXP '"+data[2]+"' ORDER BY nama_pegawai ASC LIMIT 1 OFFSET "+offset;
				connection.query(sqls, function  (err_final,rows){
					if (err_final) throw err_final
				  if (rows === undefined) {
						res.send("Pilihan Tidak Tersedia.</b>|"
									 +"|"
									 +"error|"
									 +"1_parameter")
					}
				  else if (data[3] < data[4] || data[4] == 0) {
				    res.send("Keluar dari pilihan.</b>|"
				           +"|"
				           +"success|"
				           +"1_parameter")
				   	return 0;
				  }
				  else {
				    var rows_s = JSON.stringify(rows)
				    var rows_s = rows_s.split(":")
				    var rows_s = rows_s[1].replace(/[^a-zA-Z0-9\s']/gi, "");
				    var rows_s = rows_s.replace(/nippegawai/gi, "");

				    res.send("<img src='http://192.168.1.129/man2/frontend/img/foto/pegawai/"+rows[0].nip_pegawai+"' style='width:170px'></img>|"
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
						return 0;
					}
					else if (data[3] < data[4] || data[4] == 0) {
						res.send("Keluar dari pilihan.</b>|"
									 +"|"
									 +"success|"
									 +"1_parameter")
					 return 0;
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
							res.send("<img src='http://192.168.1.129/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
							+rows_s+"|"
							+"success|"
							+"2_parameters");
							return 0;
						}
						//jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
						if (data.isi_pesan_chat_pengguna_choose !== null) { return 0; }
						return 0;
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
						return 0;
					}
					else if (data[3] < data[4] || data[4] == 0 || rows.length == 0) {
						res.send("Keluar dari pilihan.</b>|"
									 +"|"
									 +"success|"
									 +"1_parameter")
					  return 0;
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
							return 0;

						//jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
						if (data.isi_pesan_chat_pengguna_choose !== null) { return 0; }
						return 0;
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
							return 0;
						}
						else if (data[3] < data[4] || data[4] == 0 || rows.length == 0) {
							res.send("Keluar dari pilihan.</b>|"
										 +"|"
										 +"success|"
										 +"1_parameter")
						  return 0;
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
											return 0;
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
								return 0;
							}
							//jika terdeteksi data.isi_pesan_chat_pengguna_choose ada datanya, maka tidak akan mengeksekusi perintah dibawahnya
							if (data.isi_pesan_chat_pengguna_choose !== null) { return 0; }
							return 0;
						}
					})
			} // ./ duplikat kelas
		}
		else {
					var parse	= parsing
					var parse2 = parsing.split(" ")
					var parse2 = parse2.filter(function(str) { return /\S/.test(str); }); //fungsi menghapus array yg kosong : BENTUK OBJECT

	        // Stemming process
					var split = []
					for (var i = 0; i < parse2.length; i++) {
					  if (parse2[i].endsWith("ku")) { var l = parse2[i].replace(/(ku)/gi, "") }
					  else { var l = parse2[i] }
					  split.push(l)
					}
					var stem = stemming(split)
					var parse = stem.join(" ")
	        // ./Stemming process
					var data = []
					var sqls = "SELECT kosa_kata_pesan_chat_bot_kosa_kata FROM pesan_chat_bot_kosa_kata WHERE chat_privilege_kosa_kata REGEXP ? GROUP BY grup_kosa_kata_pesan_chat_bot_kosa_kata";
					connection.query(sqls, jabatan, function  (err,rows){
						var data = []
						for (var i = 0; i < rows.length; i++) {
							data.push(rows[i].kosa_kata_pesan_chat_bot_kosa_kata)
						}
						var json = []
						var jsonA = []
						for (var i = 0; i < parse2.length; i++) {
						  var regex = new RegExp(parse2[i],"gi")
						  for (var j = 0; j < data.length; j++) {
						    var asd = data[j].match(regex)
						    if (asd !== null) { var d = 1 }
						    else { var d = 0 }
						    json.push(d)
						  }
						} // output | [1]

						var tempArray = _.chunk(json,data.length)
						// output | [2]

						var tempMatchPerKata = []
						for (var i = 0; i < data.length; i++) {
						  for (var j = 0; j < tempArray.length; j++) {
						    var s = tempArray[j][i]
						    tempMatchPerKata.push(s)
						  }
						} // output | [3]

						var tempArrayd = _.chunk(tempMatchPerKata,parse2.length)
						// output | [4]

						var fix = []
						for (var i = 0; i < tempArrayd.length; i++) {
						  fix.push
						  ({
		            "id" : i,
		            "total_match" : tempArrayd[i].filter(i => i === 1).length, //menghitung jumlah per array dari variabel tempArrayd
		            "kalimat" : data[i],
		            "split_total_kalimat" : data[i].split(" ").length
						  })
						}// output | [5]

						var totalMatch = []
						for (var i = 0; i < fix.length; i++) {
						  totalMatch.push(fix[i].total_match)
						} // array | daftar total match kata pertanyaan dengan seluruh kalimat
						var max_match_kata = Math.max(...totalMatch) // array | mencari max pada array total match

						if (max_match_kata == 0) {
							res.send("Mohon maaf, maksud dari pertanyaan <b>"+pesan+"</b> apa ya ? <br>Kami tidak memahami <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
							+"|"
							+"error|"
							+"1_parameter");
							return 0
						}

            // Seleksi kecocokan per kata pertanyaan pengguna dengan kata didatabase
						var fix2 = []
						var lowestSplit = []
						var allKalimat = []
						var min_split_kata = []
						for (var i = 0; i < fix.length; i++) {
						  if (fix[i].total_match == max_match_kata) {
								fix2.push
							  ({
			            "id" : fix[i].id,
			            "total_match" : fix[i].total_match,
			            "kalimat" : fix[i].kalimat,
			            "split_total_kalimat" : fix[i].split_total_kalimat
							  })
								lowestSplit.push(fix[i].split_total_kalimat)
								allKalimat.push(fix[i].kalimat)
								min_split_kata.push(fix[i].split_total_kalimat)
						  }
						}

            // ketika pertanyaan yang diajukan length hanya : 1 / 2, maka dicegat disini
						if (pesan.split(" ").length == 1 || pesan.split(" ").length == 2) {
							var penomoranDuplikatPertanyaan = []
							for (var i = 0; i < allKalimat.length; i++) {
								var no = i+1
								penomoranDuplikatPertanyaan.push(no+". <a id='salin-pertanyaan'>"+allKalimat[i]+"</a>")
							}
							var g = JSON.stringify(penomoranDuplikatPertanyaan);
							var h	= g.replace(/[^0-9a-z,.\s='>\-<]/gi, "")
							var i	= h.replace(/,/gi, "<br>")
							res.send("Mohon maaf, kami tidak memahami <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
											+"<a class='code label label-warning'>Kode : <b style='color:black'>srn01</b></a><br><br>Mungkin <b>kata kunci</b> yang kamu cari ada disini : <br><b class='data-saran'>"+i+"</b></br>|"
											+"error|"
											+"2_parameters");
							return 0
						}

						var min_split_kata = Math.min(...min_split_kata) // array | mencari max pada array total match

						var fix3 = []
						for (var i = 0; i < fix2.length; i++) {
						  if (fix2[i].split_total_kalimat == min_split_kata) {
								fix3.push
							  ({
			            "id" : fix2[i].id,
			            "total_match" : fix2[i].total_match,
			            "kalimat" : fix2[i].kalimat,
			            "split_total_kalimat" : fix2[i].split_total_kalimat
							  })
						  }
						}

						var qwe = []
						for (var i = 0; i < fix3.length; i++) {
							qwe.push(fix3[i].kalimat)
						}// output | [6]
						// pushArray | mencari total yang diketahui max nya dan siap di push untuk disajikan ke pengguna

						var f = qwe.filter(function(elem, index, self) { return index === self.indexOf(elem); })
						if (f.length == 1) {
							var res1 = f[0]
							ketemuKosaKata(res1, pesan, parse)
						}
						else {
							var penomoranDuplikatPertanyaan = []
							for (var i = 0; i < f.length; i++) {
								var no = i+1
								penomoranDuplikatPertanyaan.push(no+". <a id='salin-pertanyaan'>"+f[i]+"</a>")
							}
							var g = JSON.stringify(penomoranDuplikatPertanyaan);
							var h	= g.replace(/[^0-9a-z,.\s='>\-<]/gi, "")
							var i	= h.replace(/,/gi, "<br>")
							res.send("Mohon maaf, kami tidak memahami <b>pertanyaan</b> yang kamu cari.<br><b>Ulangi pertanyaanmu lagi.</b>|"
											+"<a class='code label label-warning'>Kode : <b style='color:black'>srn01</b></a><br><br>Mungkin <b>kata kunci</b> yang kamu cari ada disini : <br><b class='data-saran'>"+i+"</b></br>|"
											+"error|"
											+"2_parameters");
							return 0
						}
					})
		}
  }); // ./req.getConnection(function (err, connection)

  // Function
	function ketemuKosaKata (res1, pesan, parse) {
	  // Mencari grup kosa kata
		var sql = "SELECT grup_kosa_kata_pesan_chat_bot_kosa_kata FROM pesan_chat_bot_kosa_kata WHERE kosa_kata_pesan_chat_bot_kosa_kata = '"+res1+"'";
		connection.query(sql, function  (err_grup_kosa_kata,rows_grup_kosa_kata){
			if (err_grup_kosa_kata) throw err_grup_kosa_kata;
			var grup_kosa_kata_final 	= rows_grup_kosa_kata[0].grup_kosa_kata_pesan_chat_bot_kosa_kata;

			if (grup_kosa_kata_final.startsWith("0")) {
				if (grup_kosa_kata_final == "0_jumlah_siswa") {
					var sql = "SELECT * FROM kelas_transaksi INNER JOIN data_pegawai on kelas_transaksi.nip_pegawai_wali_kelas_transaksi = data_pegawai.nip_pegawai ORDER BY kd_kelas_daftar_kelas_transaksi ASC";
					connection.query(sql, function  (err_rows,rows){
					var sql = "SELECT kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan, COUNT(DISTINCT nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan) AS cnt FROM nilai_siswa_transaksi_smt1_pengetahuan GROUP BY kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan ORDER BY kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan ASC";
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
							}
						}
						arr.push("<br>Jumlah Seluruh Siswa : <b><br>"+rows_jumlah_siswa[0].jumlah_seluruh_siswa+"</b>")
						var arr = JSON.stringify(arr)
						var arr = arr.replace(/[^a-zA-Z0-9.\s+<>:='_/&#]/g, "")
						res.send("Jumlah Seluruh Siswa : <br>"+arr+"|"
										+"|"
										+"success|"
										+"1_parameter");
						return 0;
					})
				})
				})
				}
				else if(grup_kosa_kata_final == "0_jumlah_pegawai"){
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
							}
						}
						arr.push("<br>Jumlah Seluruh Pegawai : <b><br>"+rows_jumlah_pegawai[0].jumlah_seluruh_pegawai+"</b>")
						var arr = JSON.stringify(arr)
						var arr = arr.replace(/[^a-zA-Z0-9.\s+<>:='_/&#]/g, "")
						res.send("Jumlah Seluruh pegawai : <br>"+arr+"|"
										+"|"
										+"success|"
										+"1_parameter");
						return 0;
				})
				})
				})
				}
				else if (grup_kosa_kata_final == "0_daftar_kelas_dan_wali_kelas") { // SELURUH KELAS DAN WALI KELAS
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
								var no = i+1;
								arr.push("<br><b>"+no+". Nama Kelas : "+rows[i].kd_kelas_daftar_kelas_transaksi+"</b><br>Data : <br>a). Wali Kelas : <b>"+rows[i].nama_pegawai+"</b><br>b). Jumlah Siswa : <b>"+hitung_jml_siswa_per_kelas[j].cnt+"</b><br>");
							}
						}
					}
					var arr = JSON.stringify(arr)
					var arr = arr.replace(/[^a-zA-Z0-9.\s+<>:='_/&#]/g, "")
					res.send("Daftar Kelas dan Wali Kelas : <br>"+arr+"|"
									+"|"
									+"success|"
									+"1_parameter");
					return 0;
					})
					})
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
								var hps_arr_kosong = splice.filter(function(str) { return /\S/.test(str); }); //fungsi menghapus array yg kosong : BENTUK OBJECT
								var splice2= hps_arr_kosong.join().replace(/,/g, ' ');
								hps_arr_kosong.push("null");
							}
						}
						// NOT FOUND 3 nama kelas
						if (index === undefined || index == -1) {
							res.send("Mohon maaf, <b>nama kelas</b> yang dicari tidak ditemukan.<br>|"
											+"|"
											+"error|"
											+"1_parameter_no_clear|"
											+"|");
							return 0;
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
																	return 0;
																}
																else {
																	res.send("Kelas <b>"+nama_kelas_daftar+"</b> tidak ada siswanya.|"
																	+"|"
																	+"error|"
																	+"1_parameter");
																}
														})
												})
												return 0;
											}
											else if (count_nama_kelas > 1) {
												var sql = "SELECT nama_kelas_daftar FROM kelas_daftar WHERE nama_kelas_daftar REGEXP '"+regex6[0]+"' ORDER BY nama_kelas_daftar ASC";
													connection.query(sql, selects, function (err_cari_kd_kelas,rows_cari_kd_kelas){
														var daftar_duplikasi_nama_kelas	=	[]
														for (var i = 0; i < rows_cari_kd_kelas.length; i++) {
															var no = i + 1;
															daftar_duplikasi_nama_kelas.push('<br>'+no+'. '+rows_cari_kd_kelas[i].nama_kelas_daftar);
														}
														daftar_duplikasi_nama_kelas.push("<br><b>"+(no+1)+"</b> > lebih. <b>Keluar<b><br><br><a class='code label label-warning'>Kode : <b style='color:black'>srn02</b></a>")
														var daftar_duplikasi_nama_kelas = JSON.stringify(daftar_duplikasi_nama_kelas)
														var daftar_duplikasi_nama_kelas = daftar_duplikasi_nama_kelas.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
														res.send('Terdapat <b>daftar nama kelas</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br>'+daftar_duplikasi_nama_kelas+"|"
														+"Coba pilih nomor yang telah disediakan : |"
														+"success|"
														+"duplicate_name|"
														+grup_kosa_kata_final+'>kelas>'+regex6[0]+'>'+count_nama_kelas);
													})
													return 0;
											}
										});
										return 0;
									} }
								else {
								} } }
						});
					return 0;
				}
				else if (grup_kosa_kata_final == "0_daftar_pengampu_kelas") { //SELURUH MATA PELAJARAN PER KELAS DAN PENGAMPUNYA
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
						if (index === undefined || index == -1) {
							res.send("Mohon maaf, <b>nama kelas</b> yang dicari tidak ditemukan.<br>|"
											+"|"
											+"error|"
											+"1_parameter_no_clear|"
											+"|");
							return 0;
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
																	res.send('Pengampu mata pelajaran kelas <b>'+regex6[0]+'</b> adalah : '+daftar_mapel_dan_pengampu_mapel_per_kelas+"|"
																	+"|"
																	+"success|"
																	+"1_parameter");
																	return 0;
																}
																else {
																	res.send("Pengampu mata pelajaran kelas <b>"+regex6[0]+"</b> tidak ada pengampunya|"
																	+"|"
																	+"error|"
																	+"1_parameter");
																}
														})
												})
												return 0;
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
														daftar_duplikasi_nama_kelas.push("<br><b>"+(no+1)+"</b> > lebih. <b>Keluar<b><br><br><a class='code label label-warning'>Kode : <b style='color:black'>srn02</b></a>")
														var daftar_duplikasi_nama_kelas = JSON.stringify(daftar_duplikasi_nama_kelas)
														var daftar_duplikasi_nama_kelas = daftar_duplikasi_nama_kelas.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
														res.send('Terdapat <b>daftar nama kelas</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br>'+daftar_duplikasi_nama_kelas+"|"
														+"Coba pilih nomor yang telah disediakan : |"
														+"success|"
														+"duplicate_name|"
														+grup_kosa_kata_final+'>kelas>'+regex6[0]+'>'+count_nama_kelas);
													})
													return 0;
											}
										});
										return 0;
									} }
								else {
								} } }
						});
					return 0;
				}
				else if (grup_kosa_kata_final == "0_detail_pembayaran") {
					var sql = "SELECT * FROM pembayaran INNER JOIN pembayaran_daftar on pembayaran.kd_pembayaran = pembayaran_daftar.kd_pembayaran_daftar WHERE nis_siswa_pembayaran='"+userId+"' ORDER BY lunas_pembayaran DESC"; // userID
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
					return 0;
				})
				}
				else if (grup_kosa_kata_final == "0_daftar_pengampu_mapel") { // Jika yang dicari daftar seluruh pengampu Contoh : Bahasa Indonesia
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
						if (index === undefined || index == -1) {
							res.send("Mohon maaf, <b>nama mata pelajaran</b> yang dicari tidak ditemukan.<br>|"
											+"|"
											+"error|"
											+"1_parameter_no_clear|"
											+"|");
							return 0;
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
																	return 0;
																}
																else {
																	res.send("Pengampu mata pelajaran dengan nama mata pelajaran <b>"+regex6[0]+"</b> tidak ada pengampunya|"
																	+"|"
																	+"error|"
																	+"1_parameter");
																}
														})
												})
												return 0;
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
														daftar_duplikasi_nama_mapel.push("<br><b>"+(no+1)+"</b> > lebih. <b>Keluar<b><br><br><a class='code label label-warning'>Kode : <b style='color:black'>srn02</b></a>")
														var daftar_duplikasi_nama_mapel = JSON.stringify(daftar_duplikasi_nama_mapel)
														var daftar_duplikasi_nama_mapel = daftar_duplikasi_nama_mapel.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
														res.send('Terdapat <b>daftar nama mata pelajaran</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br>'+daftar_duplikasi_nama_mapel+"|"
														+"Coba pilih nomor yang telah disediakan : |"
														+"success|"
														+"duplicate_name|"
														+grup_kosa_kata_final+'>'+grup+'>'+regex6[0]+'>'+count_nama_mapel);
													})
													return 0;
											}
										});
										return 0;
									} }
								else {
								} } }
						});
					return 0;
				}
			}
			else if (grup_kosa_kata_final.endsWith("pegawai")) {
				var jabatan_cari = grup_kosa_kata_final.split("_")
				var jabatan_cari = jabatan_cari[jabatan_cari.length - 1]
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
							var splice = parse2.splice(index); // mendeteksi array nama panjang setelah index nama awal heryani
							var hps_arr_kosong = splice.filter(function(str) {
								return /\S/.test(str);
							}); //fungsi menghapus array yg kosong : BENTUK OBJECT
							var splice2 = hps_arr_kosong.join().replace(/,/g, ' ');
							hps_arr_kosong.push("null");
						}
					}
					// NOT FOUND 3 pegawai
					if (index === undefined || index == -1) {
						res.send("Mohon maaf, <b>nama pegawai</b> yang dicari tidak ditemukan.<br>|"
										+"|"
										+"error|"
										+"1_parameter_no_clear|"
										+"|");
						return 0;
					}
					else {
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
														res.send("<img src='http://192.168.1.129/man2/frontend/img/foto/pegawai/"+rows[0].nip_pegawai+"' style='width:170px'></img>|"
														+final+"|"
														+"success|"
														+"2_parameters");
														return 0;
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
														nama_nip_baru.push("<br><b>"+j+"</b>. "+rows[i].nama_pegawai+"<br><img src='http://192.168.1.129/man2/frontend/img/foto/pegawai/"+rows[i].nip_pegawai+"' style='width:70px'></img>")
													}
													nama_nip_baru.push("<br><b>"+(j+1)+"</b> > lebih. <b>Keluar<b><br><br><a class='code label label-warning'>Kode : <b style='color:black'>srn02</b></a>")
													var nama_nip_baru = JSON.stringify(nama_nip_baru)
													var nama_nip_baru = nama_nip_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
													res.send("Terdapat <b>daftar nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br>"+nama_nip_baru+"|"
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
										return 0;
									}
								}
								else {
								} } }
								return 0;
					}
					});
				return 0;
			}
			else if (grup_kosa_kata_final.endsWith("siswa")) {
				var jabatan_cari = grup_kosa_kata_final.split("_")
				var jabatan_cari = jabatan_cari[jabatan_cari.length - 1]
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
					if (index === undefined || index == -1) {
						res.send("Mohon maaf, <b>nama siswa</b> yang dicari tidak ditemukan.<br>|"
										+"|"
										+"error|"
										+"1_parameter_no_clear|"
										+"|");
						return 0;
					}
					else {
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
														res.send("<img src='http://192.168.1.129/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
																		+"Mohon maaf, data yang kamu minta masih kosong.|"
																		+"error|"
																		+"2_parameters");
														return false
													}
													else {
														res.send("<img src='http://192.168.1.129/man2/frontend/img/foto/siswa/"+rows[0].nis_siswa+"' style='width:170px'></img>|"
														+final+"|"
														+"success|"
														+"2_parameters");
														return 0;
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
														nama_nis_baru.push("<br><b>"+j+"</b>. "+rows[i].nama_siswa+"<br><img src='http://192.168.1.129/man2/frontend/img/foto/siswa/"+rows[i].nis_siswa+"' style='width:70px'></img>")
													}
													nama_nis_baru.push("<br><b>"+(j+1)+"</b> > lebih. <b>Keluar<b><br><br><a class='code label label-warning'>Kode : <b style='color:black'>srn02</b></a>")
													var nama_nis_baru = JSON.stringify(nama_nis_baru)
													var nama_nis_baru = nama_nis_baru.replace(/[^a-zA-Z0-9.\s+<>:='_/&#-]/g, "")
													res.send("Terdapat <b>daftar nama</b> yang kamu cari, pilihlah salah satu dari daftar tersebut : <br>"+nama_nis_baru+"|"
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
										return 0;
									} }
								else {
								} } }
					}
					});
			}
			}); // ./grup_kosa_kata_final
	}
  // stemming imbuhan menjadi kata dasar
	function stemming (split) {
		var json =  {
		              "mata" : [ "mata pencaharian", "mata pelajaran", "mata uang", "mata kail" ]
		            }
	  // double words
	  var temp1 = []
	  var temp2 = []
	  for (var i = 0; i < split.length; i++) {
	    for (var j = 0; j < Object.keys(json).length; j++) {
	      if (split[i] == Object.keys(json)[j]) {
	        var lihatBelakang = i
	        var lihatDepan = i+1
					if (split[lihatDepan] === undefined) { return [split[lihatBelakang]] }
					var keys = Object.keys(json)[j]
	        var values = Object.values(json)[j]
	        var regex = new RegExp (split[lihatDepan], "g")
	        for (var k = 0; k < values.length; k++) {
	          if (values[k].match(regex) || values[k].match(regex) !== null){
	            temp1.push({
	              "index" : i,
	              "word" : split[lihatBelakang],
	              "visible" : "1"
	            })
	            i++
	            temp1.push({
	              "index" : i,
	              "word" : split[lihatDepan],
	              "visible" : "1"
	            })
	          }
	        }
	      }
	      else {
	        temp2.push({
	          "index" : i,
	          "word" : split[i],
	          "visible" : "0"
	        })
	      }
	    }
	  }
	  var all = temp1.concat(temp2)
	  var all = _.uniqBy(all, function (e) {
	              return e.index;
	            });
	  var stem = _.orderBy(all, ['index'],['asc']);
	  // ./double words

	  var s = []
	  for (var i = 0; i < stem.length; i++) {
	    if (stem[i].visible == "0") {
	      // prefiks
	      if (stem[i].word.startsWith("peng")) {
	        var l = stem[i].word.replace(/peng/gi, "")
	        s.push(l)
	      }
	      // ./prefiks
	      // konfiks
	      else if (stem[i].word.startsWith("pel") && stem[i].word.endsWith("an")) {
	        var l = stem[i].word.replace(/(pel|an)/gi, "")
	        s.push(l)
	      }
	      else if (stem[i].word.startsWith("pem") && stem[i].word.endsWith("an")) {
	        var l = stem[i].word.replace(/(pem|an)/gi, "")
	        s.push(l)
	      }
	      else if (stem[i].word.startsWith("pe") && stem[i].word.endsWith("an")) {
	        var l = stem[i].word.replace(/(pe|an)/gi, "")
	        s.push(l)
	      }
	      // ./konfiks
	      // suffiks
	      else if (stem[i].word.endsWith("nya") || stem[i].word.endsWith("kan")) {
	        var l = stem[i].word.replace(/(nya|kan)/gi, "")
	        s.push(l)
	      }
	      // ./suffiks
	      else {
	        s.push(stem[i].word)
	      }
	    }
	    else if (stem[i].visible == "1") {
	      if (stem[i].word.endsWith("nya") || stem[i].word.endsWith("kan")) {
	        var l = stem[i].word.replace(/(nya|kan)/gi, "")
	        s.push(l)
	      }
	      else {
	        s.push(stem[i].word)
	      }
	    }
	  }
	return s
	}

};
