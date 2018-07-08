/**
* Module dependencies.
*/
//var methodOverride = require('method-override');
// Express
var express             = require('express');
var index               = require('./controllers/index');
var cek_login           = require('./models/cek_login');
var data_user_pegawai   = require('./models/data_user_pegawai');
var data_user_siswa     = require('./models/data_user_siswa');
var http                = require('http');
var path                = require('path');
var session             = require('express-session');
var connection          = require('express-myconnection');
var app                 = express();
var mysql               = require('mysql');
var bodyParser          = require("body-parser");
// ./Express
// var connection = mysql.createConnection({
//               host     : 'localhost',
//               user     : 'root',
//               password : '',
//               database : 'man2'
//             });

app.use(connection(mysql, {
    host: 'localhost',
    user: 'root',
    password: '',
    port: '3306',
    database: 'man2_chatbot'
}, 'single'));

// connection.connect();

global.db = connection;

// all environments
app.set('views', __dirname + '/views');
// app.set('views', __dirname + '/views/siswa');
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.static('public'));
app.use('/third-party', express.static(__dirname + '/third-party'));
app.use('/node_modules', express.static(__dirname + '/node_modules'));
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
          secret: 'keyboard cat',
          resave: false,
          saveUninitialized: true,
          cookie: {
            maxAge: 600000,
            // secure : true
          }
        }));

// development only
app.get('/', index.index);//login

// USER CRUD
app.post('/login', cek_login.login);
app.get('/logout', cek_login.logout);
// Pegawai
app.get('/dashboard-pegawai', data_user_pegawai.dashboard_pegawai);//call for dashboard page after login
app.post('/dashboard/chat_user_pegawai', data_user_pegawai.chat_user_pegawai);
//Siswa
app.get('/dashboard-siswa', data_user_siswa.dashboard_siswa);
app.post('/dashboard/chat_user_siswa', data_user_siswa.chat_user_siswa);

// app.get('/dashboard/chat_user_pegawai', data_user_pegawai.chat_user_pegawai);
// app.get('/dashboard/chat_bot_history', data_user.chat_bot_history);
// app.post('/dashboard/chat_bot', data_user.chat_bot);

//Middleware
var listener = app.listen(8888, function(){
    console.log('Listening on port ' + listener.address().port); //Listening on port 8888
    console.log('Listening on address ' + listener.address().address); //Listening on port 8888
});
