const express = require('express')
const path = require("path");

// Express becomes available
const app = express()

// Static assets management
app.use('/assets', express.static(path.join(__dirname, 'assets')))
app.use('/assets', express.static('assets'))

// Logic
app.get('/', function (req, res) {
  res.send('<img src="/assets/el_gifo.gif"/>')
})

// Start server
app.listen(3329, function () {
  console.log('This crap is running on port 3329 :)')
})