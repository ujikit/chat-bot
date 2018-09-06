/**
* Module dependencies.
*/
//var methodOverride = require('method-override');
// Express
var express             = require('express');
var http                = require('http');
var path                = require('path');
var session             = require('express-session');
var connection          = require('express-myconnection');
var app                 = express();
var mysql               = require('mysql');
var bodyParser          = require("body-parser");
// ./Express
// Index
var index               = require('./models/index');
// Pegawai
var cek_login_pegawai   = require('./models/cek_login_pegawai');
// var data_user_pegawai   = require('./models/data_user_pegawai');
// Siswa
var cek_login_siswa   = require('./models/cek_login_siswa');
// var data_user_siswa     = require('./models/data_user_siswa');
// App
var data_user_app    = require('./models/data_user_app');

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
            maxAge: 600000
            // secure : true
          }
        }));

// development only
app.get('/', index.index);//login

// USER CRUD
app.post('/forgot_password', index.forgot_password);

// Pegawai
app.post('/login_pegawai', cek_login_pegawai.login_pegawai);
app.get('/logout_pegawai', cek_login_pegawai.logout_pegawai);
app.get('/dashboard_user', data_user_app.dashboard_user);//call for dashboard page after login
app.post('/dashboard/chat_user_app', data_user_app.chat_user);
//Siswa
app.post('/login_siswa', cek_login_siswa.login_siswa);
app.get('/logout_siswa', cek_login_siswa.logout_siswa);
// app.get('/dashboard_siswa', data_user_app.dashboard_siswa);
// app.post('/dashboard/chat_user_siswa', data_user_siswa.chat_user_siswa);
// Suggest
app.post('/dashboard/data_user_app/submit_suggest_kosa_kata', data_user_app.data_user_suggest);

// GET VIEWS
app.get('/dashboard_tutorial_video', data_user_app.dashboard_tutorial_video);
app.get('/dashboard_tutorial_video_cari/:id', data_user_app.dashboard_tutorial_video_cari);


//Middleware
var listener = app.listen(8888, function(){
    console.log('Listening on port ' + listener.address().port); //Listening on port 8888
    console.log('Listening on address ' + listener.address().address); //Listening on port 8888
});
