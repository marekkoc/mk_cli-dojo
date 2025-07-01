const express = require('express');
const app = express();
app.get('/', (req, res) => res.send('API Server'));
app.listen(3000);
