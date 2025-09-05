-- Consulta produtos + categoria + estoque
-- Junta 3 tabelas: Produto, ProdutoCategoria, ProdutoEstoque

SELECT 
    p.Nome AS NomeProduto,
    pc.Nome AS Categoria,
    pe.Quantidade AS QuantidadeEstoque
FROM Produto p
INNER JOIN ProdutoCategoria pc ON p.CategoriaId = pc.Id
INNER JOIN ProdutoEstoque pe ON p.Id = pe.ProdutoId;

-- p, pc, pe = apelidos das tabelas
-- INNER JOIN = conecta tabelas
-- AS = renomeia colunas