// Express
var express             = require('express');
var http                = require('http');
var path                = require('path');
var session             = require('express-session');
var connection          = require('express-myconnection');
var flash               = require('express-flash');
var app                 = express();
var mysql               = require('mysql');
var bodyParser          = require("body-parser");
// ./Express

// Models
var index               = require('./models/index');
var cek_login_pegawai   = require('./models/cek_login_pegawai');
var cek_login_siswa     = require('./models/cek_login_siswa');
var data_user_app       = require('./models/data_user_app');

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
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.static('public'));
app.use(flash());
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
// Logout Function (Anti Back Button After Logout)
app.use(function(req, res, next) {
  res.set('Cache-Control', 'no-cache, private, no-store, must-revalidate, max-stale=0, post-check=0, pre-check=0');
  next();
});

// POST Request
// POST
app.post('/login_pegawai', cek_login_pegawai.login_pegawai);
app.post('/login_siswa', cek_login_siswa.login_siswa);
app.post('/dashboard/chat_user_app', data_user_app.chat_user);
app.post('/dashboard/data_user_app/submit_suggest_kosa_kata', data_user_app.data_user_suggest);
app.post('/forgot_password', index.forgot_password);
// GET
app.get('/', index.index);
app.get('/dashboard_tutorial_video_cari/:id', data_user_app.dashboard_tutorial_video_cari);
app.get('/logout_siswa', cek_login_siswa.logout_siswa);
app.get('/logout_pegawai', cek_login_pegawai.logout_pegawai);
// ./POST Request

// GET VIEWS
app.get('/dashboard_user', data_user_app.dashboard_user);
app.get('/dashboard_tutorial_video', data_user_app.dashboard_tutorial_video);
// ./GET VIEWS

//Middleware
var listener = app.listen(8888, function(){
    console.log('Listening on port ' + listener.address().port); //Listening on port 8888
    console.log('Listening on address ' + listener.address().address); //Listening on port 8888
});
