const express = require('express');
const cors = require('cors');
const path = require('path');
const fs = require('fs');

const app = express();
const PORT = 8071;

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.static(path.join(__dirname, '../')));

// Rotas API
app.get('/api/projetos', (req, res) => {
  const projetos = JSON.parse(fs.readFileSync('./data/projetos.json', 'utf8'));
  res.json(projetos);
});

app.get('/api/usuarios/:id', (req, res) => {
  const usuarios = JSON.parse(fs.readFileSync('./data/usuarios.json', 'utf8'));
  const usuario = usuarios.usuarios.find(u => u.id == req.params.id);
  res.json(usuario);
});

// Rota principal
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '../index.html'));
});

app.listen(PORT, () => {
  console.log('Servidor rodando em http://localhost:' + PORT);
});