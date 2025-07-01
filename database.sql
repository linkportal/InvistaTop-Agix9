-- AGIX Invest Database Structure
-- PostgreSQL Schema

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    nivel VARCHAR(50) DEFAULT 'Bronze',
    saldo DECIMAL(15,2) DEFAULT 0.00,
    total_investido DECIMAL(15,2) DEFAULT 0.00,
    lucro_total DECIMAL(15,2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE projetos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    localizacao VARCHAR(255),
    risco VARCHAR(50),
    rentabilidade VARCHAR(50),
    tempo INTEGER,
    captado DECIMAL(15,2) DEFAULT 0.00,
    vgv DECIMAL(15,2) NOT NULL,
    ativo BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE investimentos (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER REFERENCES usuarios(id),
    projeto_id INTEGER REFERENCES projetos(id),
    valor_investido DECIMAL(15,2) NOT NULL,
    data_investimento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Ativo'
);