var bcrypt = require('bcryptjs');
// node-datetime
var dateTime = require('node-datetime');
var dt = dateTime.create();
dt.format('m/d/Y H:M:S');
// ./node-datetime

// Connection
var mysql      = require('mysql');
var connection = mysql.createConnection({
	host : "localhost",
	user : "root",
	password : "",
	database : "man2"
});
// ./Connection

//-----------------------------------------------login page call------------------------------------------------------
exports.login = function(req, res){
   var message = '';
   var sess = req.session;

   if(req.method == "POST"){
      var post = req.body;
      var name = post.user_name;
      var pass = post.password;
      var sql  = "SELECT * FROM `data_pegawai` WHERE `username_pegawai`='"+name+"'";
      req.getConnection(function (err, connection) {
        connection.query(sql, function (err, results) {
          if(results.length){
            var password_pegawai = results[0].password_pegawai;

            bcrypt.compare(pass, password_pegawai).then((result) => {
              if (result) {
                console.log(result);
                req.session.userId = results[0].nip_pegawai;
                req.session.user = results[0];
                res.redirect('/home/dashboard');
                res.end();
                console.log('Login Id : '+results[0].nip_pegawai);
              }
              else {
                console.log("password salah");
                res.redirect('/login');
              }
            });
          }
          else{
            console.log("Username Tidak Ada");
             message = 'Wrong Credentials.';
             res.render('index.ejs',{message: message});
          }
        });
      });

   } else {
      res.render('index.ejs',{message: message});
   }

};
//-----------------------------------------------dashboard page functionality----------------------------------------------

exports.dashboard = function(req, res){

   var userId = req.session.userId;
   if(userId == null){
      res.redirect("/login");
      return;
   }

   var sql = "SELECT * FROM `pesan_chat_bot` WHERE `pengirim_pesan_chat_bot`='bot'order by waktu_pesan_chat_bot asc";

   req.getConnection(function (err, connection) {
     connection.query(sql, function (err, results) {
       res.render('dashboard.ejs',{data:results, session:userId});
     });
   });

};

/*Save the customer*/
exports.chat = function(req,res){

  var input = JSON.parse(JSON.stringify(req.body));
  req.getConnection(function (err, connection) {
    var data = {
      pengirim_pesan_chat_pengguna  : input.pengirim_pesan_chat_pengguna,
      penerima_pesan_chat_pengguna  : 'bot',
      isi_pesan_chat_pengguna       : input.isi_pesan_chat_pengguna,
      waktu_pesan_chat_pengguna     : new Date(dt.now())
    };
      connection.query("INSERT INTO pesan_chat_pengguna set ?",data,function  (err,rows) {
    	if (err) throw err;
    	// res.send("Created "+JSON.stringify(rows));
			console.log("Pesan : '"+data.isi_pesan_chat_pengguna+"' Berhasil dikirim oleh "+data.pengirim_pesan_chat_pengguna+" ke "+data.penerima_pesan_chat_pengguna);
      });
			res.end();
  });
    // var input = JSON.parse(JSON.stringify(req.body));
    // req.getConnection(function (err, connection) {
    //     var data = {
    //       pengirim_pesan_chat_pengguna  : input.pengirim_pesan_chat_pengguna,
    //       penerima_pesan_chat_pengguna  : 'bot',
    //       isi_pesan_chat_pengguna       : input.isi_pesan_chat_pengguna,
    //       waktu_pesan_chat_pengguna     : new Date(dt.now())
    //     };
    //     var query = connection.query("INSERT INTO pesan_chat_pengguna set ? ",data, function(err, rows){
    //       if (err){
    //         console.log("Error inserting : %s ",err );
    //           console.log(data);
    //       }
    //       else {
    //         // console.log(data);
    //         // res.redirect('/home/dashboard');
    //         // res.end();
    //       }
    //     });
    //    // console.log(query.sql); get raw query
    // });
};

//------------------------------------logout functionality----------------------------------------------
exports.logout=function(req,res){
   req.session.destroy(function(err) {
      res.redirect("/login");
   })
};
