const express = require('express');
const cors = require('cors');
const path = require('path');

const app = express();
const PORT = 8071;

app.use(cors());
app.use(express.json());
app.use(express.static(path.join(__dirname, '../')));

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '../index.html'));
});

app.listen(PORT, () => {
  console.log('Servidor AGIX Invest rodando na porta ' + PORT);
});