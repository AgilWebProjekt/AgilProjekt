const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const sqlite3 = require('sqlite3').verbose()

const db = new sqlite3.Database('./database/quiztasticQuestions.db')

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

app.listen(port, () => {
  console.log(`Server is running on port ${port}`)
})
