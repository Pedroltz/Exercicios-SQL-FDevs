-- Junta nomes completos dos clientes usando CASE
-- Concatena: titulo + primeiro nome + inicial + ultimo nome

SELECT DISTINCT
    CASE 
        WHEN Titulo IS NULL THEN ''
        ELSE Titulo + ' '
    END +
    CASE 
        WHEN PrimeiroNome IS NULL THEN ''
        ELSE PrimeiroNome + ' '
    END +
    CASE 
        WHEN MeioInicial IS NULL THEN ''
        ELSE MeioInicial + ' '
    END +
    CASE 
        WHEN UltimoNome IS NULL THEN ''
        ELSE UltimoNome
    END AS NomeCompleto
FROM Cliente;

-- DISTINCT = remove duplicados
-- CASE = verifica se é NULL e decide o que fazer
-- WHEN/THEN/ELSE = condições do CASE