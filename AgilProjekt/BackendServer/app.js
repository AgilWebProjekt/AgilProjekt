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