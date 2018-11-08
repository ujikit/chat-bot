// var kalimat = "daftar pengampu mata pelajaran,daftar pengajar mata pelajaran,nama lengkap pegawai,jenis kelamin pegawai,alamat rumah pegawai,nomor telepon pegawai,nomor induk pegawai,nomor telepon siswa,nomor induk siswa,nomor induk nasional siswa,alamat rumah siswa,tempat lahir siswa,tanggal lahir siswa,nama ayah siswa,nama ibu siswa,alamat orangtua siswa,nomor telepon orang tua siswa,pekerjaan ayah siswa,pekerjaan ibu siswa,nama wali siswa,pekerjaan wali siswa,alamat wali siswa,nomor telepon wali siswa,detail pembayaran,daftar kelas dan wali kelas,jumlah siswa,jumlah pegawai,daftar pengampu mata pelajaran kelas,daftar pengajar kelas,daftar nama seluruh siswa kelas,nama lengkap siswa"
// var a = kalimat.split(",")
//
//
//
// stemming("daftar pengampu mata pelajaran");
//
// function stemming (stem) {
// 	var kata = stem.split(" ")
// 	var stemFinal = []
//
// 	for (var i = 0; i < kata.length; i++) {
// 		if (kata[i].startsWith("peng")) {
// 			var l = kata[i].replace(/peng/gi, "")
// 			stemFinal.push(l)
// 		}
// 		else if (kata[i].startsWith("pel") && kata[i].endsWith("an")) {
// 			var l = kata[i].replace(/(pel|an)/gi, "")
// 			stemFinal.push(l)
// 		}
// 		else if (kata[i].startsWith("pem") && kata[i].endsWith("an")) {
// 			var l = kata[i].replace(/(pem|an)/gi, "")
// 			stemFinal.push(l)
// 		}
// 		else if (kata[i].startsWith("pe") && kata[i].endsWith("an")) {
// 			var l = kata[i].replace(/(pe|an)/gi, "")
// 			stemFinal.push(l)
// 		}
// 		else {
// 			stemFinal.push(kata[i])
// 		}
// 	}
// 	var stemFinal = stemFinal.join(" ")
// 	return stemFinal
// }

let mysql      = require('mysql');
let connection = mysql.createConnection({
	host : "localhost",
	user : "root",
	password : "",
	database : "man2_chatbot"
});

var kata = "daftar ampu mata ajar,daftar ajar mata ajar,nama lengkap pegawai,jenis kelamin pegawai,alamat rumah pegawai,nomor telepon pegawai,nomor induk pegawai,nomor telepon siswa,nomor induk siswa,nomor induk nasional siswa,alamat rumah siswa,tempat lahir siswa,tanggal lahir siswa,nama ayah siswa,nama ibu siswa,alamat orangtua siswa,nomor telepon orang tua siswa,kerja ayah siswa,kerja ibu siswa,nama wali siswa,kerja wali siswa,alamat wali siswa,nomor telepon wali siswa,detail bayar,daftar kelas dan wali kelas,jumlah siswa,jumlah pegawai,daftar ampu mata ajar kelas,daftar ajar kelas,daftar nama seluruh siswa kelas,nama lengkap siswa"

var kalimat = "daftar pengampu mata pelajaran,daftar pengajar mata pelajaran,nama lengkap pegawai,jenis kelamin pegawai,alamat rumah pegawai,nomor telepon pegawai,nomor induk pegawai,nomor telepon siswa,nomor induk siswa,nomor induk nasional siswa,alamat rumah siswa,tempat lahir siswa,tanggal lahir siswa,nama ayah siswa,nama ibu siswa,alamat orangtua siswa,nomor telepon orang tua siswa,pekerjaan ayah siswa,pekerjaan ibu siswa,nama wali siswa,pekerjaan wali siswa,alamat wali siswa,nomor telepon wali siswa,detail pembayaran,daftar kelas dan wali kelas,jumlah siswa,jumlah pegawai,daftar pengampu mata pelajaran kelas,daftar pengajar kelas,daftar nama seluruh siswa kelas,nama lengkap siswa"

var grup = "0_daftar_pengampu_mapel,0_daftar_pengampu_mapel,nama_pegawai,jenis_kelamin_pegawai,alamat_pegawai,no_handphone_pegawai,nip_pegawai,no_handphone_siswa,nis_siswa,nisn_siswa,alamat_siswa,tempat_lahir_siswa,tanggal_lahir_siswa,orangtua_nama_ayah_siswa,orangtua_nama_ibu_siswa,orangtua_alamat_siswa,orangtua_telepon_siswa,orangtua_pekerjaan_ayah_siswa,orangtua_pekerjaan_ibu_siswa,nama_wali,pekerjaan_wali,alamat_wali,no_handphone_wali,0_detail_pembayaran,0_daftar_kelas_dan_wali_kelas,0_jumlah_siswa,0_jumlah_pegawai,0_daftar_pengampu_kelas,0_daftar_pengampu_kelas,0_daftar_nama_seluruh_siswa_kelas,nama_siswa"

var jabatan = "pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa|pegawai,siswa"

var a = kata.split(",")
var b = kalimat.split(",")
var c = grup.split(",")
var d = jabatan.split("|")

// console.log(a.length,b.length,c.length,d.length);
// return 0
var values = []
var sql = "INSERT INTO pesan_chat_bot_kosa_kata (kosa_kata_pesan_chat_bot_kosa_kata, 	kalimat_pesan_chat_bot_kosa_kata, grup_kosa_kata_pesan_chat_bot_kosa_kata, chat_privilege_kosa_kata) VALUES ?";
  for (var i = 0; i < 31; i++) {
    values.push([a[i], b[i], c[i], d[i]])
  }
  // console.log(values);
  // return 0
  connection.query(sql, [values], function (err, result) {
    if (err) throw err;
    console.log("Number of records inserted: " + result.affectedRows);
    return 0
  });
