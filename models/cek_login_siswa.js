const bcrypt = require('bcrypt-nodejs');
// node-datetime
var dateTime = require('node-datetime');
var dt = dateTime.create();
var date = dt.format('Y-m-d');
var hour = dt.format('H:M:S');
// ./node-datetime

// Connection
var mysql      = require('mysql');
var connection = mysql.createConnection({
	host : "192.168.1.129",
	user : "root",
	password : "",
	database : "man2_chatbot"
});
// ./Connection

//-----------------------------------------------login page call------------------------------------------------------
exports.login_siswa = function(req, res){
	req.getConnection(function (err, connection) {
   var message = '';
   var sess = req.session;
   if(req.method == "POST"){
      var post 			= req.body;
      var username 	= post.username;
      var password 	= post.password;
				var sql_siswa  = "SELECT nis_siswa,password_siswa,jabatan_siswa FROM data_siswa WHERE username_siswa='"+username+"'";
				connection.query(sql_siswa, function (err, result) {
					if (result.length == 0) {
						req.flash('error_login_siswa', 'Username Siswa '+username+', Tidak Ditemukan !')
						res.redirect('/')
					}
					else {
						var password_siswa = result[0].password_siswa;
						var hash = password_siswa;
						var hash = hash.replace(/^\$2y(.+)$/i, '$2a$1');
						bcrypt.compare(password, hash, function(error_bcrypt, result_bcrypt) {
							if (error_bcrypt) {
								// throw error_bcrypt;
								req.flash('error_login_siswa', 'Terjadi kesalahan pada Username atau Password')
								res.redirect('/')
							}
							console.log(result_bcrypt);
						    if (result_bcrypt == true) {
									req.session.userId = result[0].nis_siswa;
									req.session.jabatan = result[0].jabatan_siswa;
									console.log('Jabatan :  '+req.session.jabatan);
									console.log(date+" -- "+hour);
									res.redirect('/dashboard_user');
						    }
								else if (result_bcrypt == false) {
									console.log("Password Salah ! : "+req.session.userId);
									req.flash('error_login_siswa', 'Password Atas Username '+username+', Salah !')
									res.redirect('/')
								}
						});
					}
				});
   }
   else { res.render('index.ejs',{message: message}); }
 });
};

exports.forgot_password = function(req,res,next){
	req.getConnection(function (err, connection) {
	var message = '';
	var sess = req.session;
	if(req.method == "POST"){
	  var username 	= req.body.username_forgot_password;
	  var password 	= req.body.password_forgot_password;
	  var privilage = req.body.privilage_forgot_password;
			var sql_siswa = "INSERT into verifikasi_password (username_verifikasi_password_baru, password_baru_verifikasi_password_baru, jabatan_verifikasi_password_baru, tanggal_ganti_verifikasi_password_baru, jam_ganti_verifikasi_password_baru, status_verifikasi_password_baru) values ('"+username+"','"+password+"','"+privilage+"','"+date+"','"+hour+"','N')";
			connection.query(sql_siswa, function (err, result) {
				if (err) throw err
				console.log(result)
			})
		}
	})
};

exports.logout_siswa = function(req,res,next){
	req.session.destroy(function (err) {
	  if (err) throw err
	  res.redirect('/')
	})
};
