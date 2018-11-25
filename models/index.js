var dateTime = require('node-datetime');
var dt = dateTime.create();
var date = dt.format('Y-m-d');
var time = dt.format('H:M:S');

exports.index = function(req, res){
  res.render('index');
};

exports.forgot_password = function(req, res){
  var category = req.body.category;
  var forgot_username = req.body.forgot_username;
  var forgot_password = req.body.forgot_password;
  var forgot_date     = date;
  var forgot_time     = time;

  if (category == "pegawai") {
    cek_user(category, forgot_username);
  }
  else if (category == "siswa") {
    cek_user(category, forgot_username);
  }

  // Function
  // Cek Pengguna
  function cek_user(category, forgot_username){
    req.getConnection(function (err, connection) {
      var table     = "data_"+category;
      if (category == "pegawai") { var username  = "nip_pegawai"; }
      else if (category == "siswa") { var username = "nis_siswa"; }
      var parameter = [table, username, forgot_username];
      var sql 		  = "SELECT * FROM ?? WHERE ?? REGEXP ?";
      connection.query(sql, parameter, function  (err_rows,rows){
        if (rows.length !== 0) {
          req.getConnection(function (err, connection) {
            var parameter = [forgot_username, forgot_password, category, forgot_date, forgot_time];
            var sql 		  = "INSERT INTO verifikasi_password (username_verifikasi_password_baru, password_baru_verifikasi_password_baru, jabatan_verifikasi_password_baru, tanggal_ganti_verifikasi_password_baru, jam_ganti_verifikasi_password_baru) values (?,?,?,?,?)";
            connection.query(sql, parameter, function  (err_rows,rows){
              if (err_rows) throw err_rows;
              console.log('berhasil');
            })
          })
          res.send('Berhasil meminta password baru !');
        }
        else { res.send('Username : '+forgot_username+' tidak tersedia!'); }
      })
    })
  }

};
