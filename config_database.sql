-- Estrutura do Banco de Dados PostgreSQL
-- Para uso futuro com integração real

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    senha_hash VARCHAR(255) NOT NULL,
    nivel VARCHAR(50) DEFAULT 'Bronze',
    saldo DECIMAL(15,2) DEFAULT 0.00,
    total_investido DECIMAL(15,2) DEFAULT 0.00,
    lucro_total DECIMAL(15,2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE projetos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    localizacao VARCHAR(255),
    risco VARCHAR(50),
    rentabilidade VARCHAR(50),
    tempo INTEGER, -- em meses
    pagamento VARCHAR(50),
    amortizacao VARCHAR(50),
    prazo VARCHAR(50),
    captado DECIMAL(15,2) DEFAULT 0.00,
    vgv DECIMAL(15,2) NOT NULL,
    fechamento DATE,
    juros VARCHAR(20),
    correcao VARCHAR(50),
    imagem_url VARCHAR(500),
    ativo BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE investimentos (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER REFERENCES usuarios(id),
    projeto_id INTEGER REFERENCES projetos(id),
    valor_investido DECIMAL(15,2) NOT NULL,
    data_investimento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    lucro_obtido DECIMAL(15,2) DEFAULT 0.00,
    status VARCHAR(50) DEFAULT 'Ativo'
);

CREATE TABLE transacoes (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER REFERENCES usuarios(id),
    tipo VARCHAR(50) NOT NULL, -- 'Depósito PIX', 'Saque PIX', 'Investimento', 'Rendimento'
    valor DECIMAL(15,2) NOT NULL,
    descricao TEXT,
    status VARCHAR(50) DEFAULT 'Pendente',
    chave_pix VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);