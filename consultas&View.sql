CREATE VIEW RELATORIO_VENDAS_COMPLETO AS
SELECT 
 C.nome AS Cliente,
 F.nome AS Atendente,
 V.venda_id AS Pedido,
 SUM(IV.subtotal) AS Valor_Total_Final
FROM Vendas V 
JOIN Clientes C ON V.cliente_cpf = C.CPF_id
JOIN Funcionarios F ON V.matricula_id = F.matricula_id
JOIN itens_Venda IV ON V.venda_id = IV.venda_id
GROUP BY C.nome, F.nome, V.venda_id;


CREATE VIEW vw_Compra_01 AS
 SELECT
    P.nome AS Produto,
    P.categoria AS Categoria,
    IV.quantidade AS Quantidade_Comprada,
    IV.preço_unitario AS Preço_da_Venda,
    IV.subtotal AS Subtotal
FROM itens_Venda IV
JOIN Produtos P ON IV.product_id = P.product_id  
WHERE IV.venda_id = 1;


SELECT * FROM RELATORIO_VENDAS_COMPLETO;
SELECT * FROM vw_Compra_01;