/*const http = require('http');

const hostname = '127.0.0.1';
/*const port = 3000;

const server = http.createServer((req, res) => {
    res.status = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Hello world');
});

server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});


const express = require('express')
const app = express()
const port = 3000

app.get('/', function (req, res) {
    res.send('Hello World!')
})

app.post('/', function (req, res) {
    res.send('Got a POST request')
})

app.put('/user', function (req, res) {
    res.send('Got a PUT request at /user')
})

app.delete('/user', function (req, res) {
    res.send('Got a DELETE request at /user')
})

app.listen(port, () => console.log('Example app listening on port $ {port}!'))
*/

/*const express = require('express')
const app_express = express()
const port = 3000
const bodyParser = require('body-parser')
const path = 'C:/Users/VenuModi/repos/AgilProjekt/AgilProjekt/src'
//Använder static files
app_express.use(express.static(path))

//Parse application /x-www-form-urlencoded
app_express.use(bodyParser.urlencoded({ extended: false }))

// Parse application.json
app_express.use(bodyParser.json())

app_express.get('/', function (req, res, next) {
    res.send(path + req.params.id)
})

app_express.post('/user', function (req, res, next) {
    res.send(req.body)
})

app_express.listen(port, () => console.log(`Example app listening on port ${port}`))
*/

const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const app = express();
const port = process.env.PORT || 3000;
app.use(cors({ origin: '*' }))
app.use(bodyParser.json())

app.get('/', (req, res) => {
    res.status(200).json('Hello from Node.js!');
});


app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});