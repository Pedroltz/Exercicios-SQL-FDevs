-- Junta nomes completos dos clientes
-- Concatena: titulo + primeiro nome + inicial + ultimo nome

SELECT DISTINCT
    ISNULL(Titulo, '') + ' ' + 
    ISNULL(PrimeiroNome, '') + ' ' + 
    ISNULL(MeioInicial, '') + ' ' + 
    ISNULL(UltimoNome, '') AS NomeCompleto
FROM Cliente;

-- DISTINCT = remove duplicados
-- ISNULL = troca NULL por vazio ''
-- + = junta textos
-- AS = nome da coluna