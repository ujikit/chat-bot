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

// Insert Chat
exports.data_user_suggest = function(req,res,next){
	let userId = req.session.userId;
  // if(userId == null){
	// 	res.redirect("/");
	// 	return;
  // }
  let input = JSON.parse(JSON.stringify(req.body));
	var suggest_kosa_kata = input.suggest_kosa_kata;
	var suggest_nomor_induk = input.suggest_nomor_induk;
	req.getConnection(function (err, connection) {
		var parameter = [suggest_kosa_kata, suggest_nomor_induk];
		var sql 		= "INSERT INTO pesan_chat_bot_kosa_kata_suggest (kata_kunci_pesan_chat_bot_kosa_kata_suggest, nomor_induk_pesan_chat_bot_kosa_kata_suggest) values (?,?)";
		connection.query(sql, parameter, function  (err_rows,rows){
			if (err_rows) throw err_rows;
			res.send("berhasil")
			return false;
		})
	})
};
