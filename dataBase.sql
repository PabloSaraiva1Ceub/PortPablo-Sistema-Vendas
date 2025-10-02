INSERT INTO Clientes (CPF_id, Nome, Idade, Email, Vip) VALUES
(
'08342790100',
'Rafael Jorge',
45,
'saraivap435@gmail.com',
True
);

INSERT INTO Produtos (product_id, nome, categoria) VALUES
(
1,
'X-BACON',
'lanche'
),
(
2,
'X-SALADA',
'lanche'
),
(
3,
'X-TUDO',
'lanche'
),
(
4,
'COCA-COLA',
'bebida'
),
(
5,
'SPRITE',
'bebida'
),
(
6,
'SUCO DE LARANJA',
'bebida'
),
(
7,
'PUDIM',
'sobremesa'
);

INSERT INTO Funcionarios (nome ,cargo, data_Nascimento, numero) VALUES
(
'Pablo Saraiva',
'Atendente',
'2003-11-18',
'61993466856'
),
(
'Ana Castelo',
'Gerente',
'2004-06-16',
'61996469600'
),
(
'Alzira Castelo',
'Vendedor',
'1972-01-06',
'61991090053'
);

INSERT INTO Vendas (cliente_cpf, matricula_id) VALUES 
(
'08342790100', -- CPF DO CLIENTE 
1 -- MATRICULA DO FUNCIONARIO (Pablo Saraiva)
);

INSERT INTO itens_Venda (venda_id, product_id, quantidade, preço_unitario, subtotal) VALUES
(
1, -- venda_id
1, -- product_id (X-BACON)
2, -- quantidade 
15.00,-- valor unitario 
30.00 --subtotal 
),
(
1,
4, -- product_id (COCA-COLA)
2,
7.50,
15.00
),
(
1,
7, -- product_id (PUDIM)
2,
5.50,
11.00
);