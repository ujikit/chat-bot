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
      var sql  = "SELECT * FROM data_pegawai WHERE username_pegawai='"+name+"'";
      req.getConnection(function (err, connection) {
        connection.query(sql, function (err, results) {
          if(results.length){
            var password_pegawai = results[0].password_pegawai;
            bcrypt.compare(pass, password_pegawai).then((result) => {
              if (result) {
                console.log(result);
                req.session.userId = results[0].nip_pegawai;
                req.session.user = results[0];
                res.redirect('/dashboard');
                console.log('Login Id : '+results[0].nip_pegawai);
                res.end();
              }
              else {
                console.log("password salah");
                res.redirect('/');
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
   }
   else {
      res.render('index.ejs',{message: message});
   }
};

exports.logout = function(req,res,next){
   // req.session.destroy(function(err) {
   //    res.redirect("/login");
   // })

   req.session.destroy(function (err) {
    if (err) {
      return next(err);
    }
    // The response should indicate that the user is no longer authenticated.
    res.redirect("/");
  });

};
