const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const bcrypt = require('bcrypt');
const sqlite3 = require('sqlite3').verbose()
const saltRounds = 10;

const db = new sqlite3.Database('./database/quiztasticQuestions.db')
const db_login = new sqlite3.Database('login_database.db');



const app = express()
const port = 3000

app.use(express.json())
app.use(cors())
app.use(bodyParser.json())

app.get('/api/mathematics', (req, res) => {
  const query = 'SELECT * FROM mathematics'
  db.all(query, (err, rows) => {
    if (err) {
      console.error(err)
      res.status(500).json({ error: 'Internal Server Error' })
    } else {
      res.json(rows)
    }
  })
})

app.get('/api/science', (req, res) => {
  const query = 'SELECT * FROM science'
  db.all(query, (err, rows) => {
    if (err) {
      console.error(err)
      res.status(500).json({ error: 'Internal Server Error' })
    } else {
      res.json(rows)
    }
  })
})

app.get('/api/history', (req, res) => {
  const query = 'SELECT * FROM history'
  db.all(query, (err, rows) => {
    if (err) {
      console.error(err)
      res.status(500).json({ error: 'Internal Server Error' })
    } else {
      res.json(rows)
    }
  })
})

app.get('/api/geography', (req, res) => {
  const query = 'SELECT * FROM geography'
  db.all(query, (err, rows) => {
    if (err) {
      console.error(err)
      res.status(500).json({ error: 'Internal Server Error' })
    } else {
      res.json(rows)
    }
  })
})

app.get('/api/language', (req, res) => {
  const query = 'SELECT * FROM language'
  db.all(query, (err, rows) => {
    if (err) {
      console.error(err)
      res.status(500).json({ error: 'Internal Server Error' })
    } else {
      res.json(rows)
    }
  })
})

app.get('/api/sweden', (req, res) => {
  const query = 'SELECT * FROM sweden'
  db.all(query, (err, rows) => {
    if (err) {
      console.error(err)
      res.status(500).json({ error: 'Internal Server Error' })
    } else {
      res.json(rows)
    }
  })
})


//Create users if it does not exist
db_login.serialize(() => {
  db_login.run('CREATE TABLE IF NOT EXISTS USERS (id INTEGER PRIMARY KEY, username TEXT NOT NULL, password TEXT NOT NULL)');
});

//User registration route
app.post('/api/register', async (req, res) => {
  const { username, password } = req.body;

  try {
    //hash PW before storing it in DB
    const hashedPassword = await bcrypt.hash(password, saltRounds);

    //insert userdata in DB
    db_login.run(
      'INSERT INTO users (username, password) VALUES (?, ?)',
      [username, hashedPassword],
      (err) => {
        if (err) {
          console.error(err);
          res.status(500).json({ error: 'Registration failed' });
        } else {
          res.json({ message: 'Registration successful' });
        }
      }
    );
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Registration failed' });
  }
});


//User login route
app.post('/api/login', async (req, res) => {
  const { username, password } = req.body;


  //DB query to find the user by username
  db_login.get('SELECT * FROM users WHERE username = ?', [username], async (err, row) => {
    if (err) {
      console.error(err);
      res.status(500).json({ error: 'Login failed' });
    } else if (!row) {
      res.status(401).json({ error: 'Invalid username or password' });
    } else {

      // Compare the provided password with the stored hash to authenticate the user
      const passwordMatch = await bcrypt.compare(password, row.password);
      if (passwordMatch) {
        res.json({ message: 'Login successful' });
      } else {
        res.status(401).json({ error: 'Invalid username or password' });
      }
    }
  });
});


app.listen(port, () => {
  console.log(`Server is running on port ${port}`)
})

