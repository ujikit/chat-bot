/**
* Module dependencies.
*/
//var methodOverride = require('method-override');
// Express
var express     = require('express')
  , routes      = require('./routes')
  , user        = require('./routes/user')
  , data_user   = require('./models/data_user')
  , http        = require('http')
  , path        = require('path');
var session     = require('express-session');
var connection  = require('express-myconnection');
var app         = express();
var mysql       = require('mysql');
var bodyParser  =require("body-parser");
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
app.set('port', process.env.PORT || 8080);
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
              secret: 'keyboard cat',
              resave: false,
              saveUninitialized: true,
              cookie: { maxAge: 60000 }
            }))

// development only
app.get('/', routes.index);//call for main index page
app.get('/login', routes.index);//call for login page
app.post('/login', user.login);//call for login post
app.get('/home/dashboard', user.dashboard);//call for dashboard page after login
app.post('/home/dashboard/chat', user.chat);
app.get('/home/logout', user.logout);//call for logout

// GET Data Ajax
app.get('/dashboard/chat', data_user.data_chat);

//Middleware
var listener = app.listen(8888, function(){
    console.log('Listening on port ' + listener.address().port); //Listening on port 8888
});
