/**
* Module dependencies.
*/
//var methodOverride = require('method-override');
// Express
var express             = require('express');
var index               = require('./controllers/index');
var cek_login           = require('./models/cek_login');
var data_user_pegawai   = require('./models/data_user_pegawai');
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
    database: 'man2'
}, 'single'));

// connection.connect();

global.db = connection;

// all environments
// app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use('/third-party', express.static(__dirname + '/third-party'));
app.use('/node_modules', express.static(__dirname + '/node_modules'));
// app.use(express.static(path.join(__dirname, 'public')));
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
app.get('/dashboard', data_user_pegawai.dashboard);//call for dashboard page after login
app.get('/dashboard/chat_user_pegawai_history', data_user_pegawai.chat_user_pegawai_history);
app.post('/dashboard/chat_user_pegawai', data_user_pegawai.chat_user_pegawai);
// app.get('/dashboard/chat_user_pegawai', data_user_pegawai.chat_user_pegawai);
// app.get('/dashboard/chat_bot_history', data_user.chat_bot_history);
// app.post('/dashboard/chat_bot', data_user.chat_bot);

//Middleware
var listener = app.listen(8888, function(){
    console.log('Listening on port ' + listener.address().port); //Listening on port 8888
});
