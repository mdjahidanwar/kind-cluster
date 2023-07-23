const express = require('express');
const app = express();

// Route to show the current time

// Route to show the current time
app.get('/date', (req, res) => {
  const currentTime = new Date().toLocaleTimeString();
  res.send(`Current time is: ${currentTime}`);
});

// Start the server
const port = 8282;
app.listen(port, () => {
  console.log(`Server is running on http://0.0.0.0:${port}/date`);
});
