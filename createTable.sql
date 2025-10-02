CREATE TABLE Clientes (
CPF_id VARCHAR(11) NOT NULL PRIMARY KEY,
Nome VARCHAR(50),
Idade SMALLINT CHECK  (Idade >= 18 AND Idade <= 120),
Email varchar(50),
Vip boolean DEFAULT false,
Criado_em TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE Produtos (
product_id BIGINT PRIMARY KEY,
nome VARCHAR(50),
categoria VARCHAR(50) CHECK (categoria IN ('lanche','bebida','sobremesa')),
feito_em TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE Funcionarios(
matricula_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
cargo VARCHAR (50) NOT NULL,
data_Nascimento DATE NOT NULL,
numero VARCHAR(20) NOT NULL
);

CREATE TABLE Vendas (
venda_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
cliente_cpf VARCHAR(11) NOT NULL REFERENCES Clientes(CPF_id),
vendido_em TIMESTAMPTZ DEFAULT now(),
matricula_id BIGINT NOT NULL REFERENCES Funcionarios (matricula_id)
);

CREATE TABLE itens_Venda(
venda_id BIGINT NOT NULL REFERENCES Vendas (venda_id), 
product_id BIGINT NOT NULL REFERENCES Produtos (product_id),
quantidade INTEGER NOT NULL check (quantidade >0),
preço_unitario NUMERIC (10, 2) NOT NULL,
subtotal NUMERIC (10, 2) NOT NULL
);