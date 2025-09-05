-- Exclui produtos da categoria "Roupas"
-- ATENÇÃO: DELETE apaga dados para sempre!

DELETE FROM Produto 
WHERE CategoriaId IN (
    SELECT Id 
    FROM ProdutoCategoria 
    WHERE Nome = 'Roupas'
);

-- IN = procura na lista de IDs
-- Subconsulta encontra ID da categoria "Roupas"

-- Para testar antes (não apaga nada):
-- SELECT * FROM Produto 
-- WHERE CategoriaId IN (
--     SELECT Id 
--     FROM ProdutoCategoria 
--     WHERE Nome = 'Roupas'
-- );