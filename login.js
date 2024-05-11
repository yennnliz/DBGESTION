const express = require('express');
const sql = require('mssql');

const app = express();

// configure the SQL Server connection
const config = {
  user: 'sa',
  password: '12345678',
  server: '.....',
  database: 'Gestionsistema',
  options: {
    encrypt: true, // use encryption if your server requires it
  },
};

// create a new SQL Server connection
const pool = new sql.ConnectionPool(config);

pool.on('error', err => {
  console.error('SQL Server connection error:', err);
});

// handle form submission
app.post('/login', (req, res) => {
  const { username, password } = req.body;

  // validate the input
  if (!username || !password) {
    return res.status(400).send('Username and password are required.');
  }

  // query the database for the user
  const request = pool.request();
  request.input('username', sql.NVarChar, username);
  request.query('SELECT * FROM users WHERE username = @username', (err, result) => {
    if (err) {
      console.error('Database query error:', err);
      return res.status(500).send('Database error.');
    }

    // check if the user exists
    if (result.recordset.length === 0) {
      return res.status(401).send('Invalid username or password.');
    }

    const user = result.recordset[0];

    // check if the password is correct
    if (password !== user.password) {
      return res.status(401).send('Invalid username or password.');
    }

    // authenticate the user
    req.session.userId = user.id;
    res.send('Logged in.');
  });
});

// start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});