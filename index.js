const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Test route
app.get('/', (req, res) => {
  res.send('Hello from Task-01 CI/CD! 🎉');
});

// Listen on all network interfaces
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server listening on port ${PORT}`);
});
