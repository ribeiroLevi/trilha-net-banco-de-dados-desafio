SELECT * FROM Filmes
-- BUSCAR O NOME E O ANO DOS FILMES
SELECT Nome, Ano FROM Filmes

-- BUSCAR O NOME E O ANO DOS FILMES - ANO CRESCENTE
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

-- BUSCAR POR FILME, COM ANO E DURAÇÃO
SELECT * FROM Filmes
WHERE Nome LIKE 'De Volta para o Futuro'

-- FILMES LANÇADOS EM 1997
SELECT * FROM Filmes
WHERE Ano LIKE 1997

-- FILMES LANÇADOS APÓS 2006
SELECT * FROM Filmes
WHERE Ano > 2000
ORDER BY Ano

-- 100 < FILMES > 150 - CRESCENTE
SELECT * FROM Filmes
WHERE Duracao BETWEEN 100 AND 150
ORDER BY Duracao

-- QUANTIDADE POR ANO, ORDEM CRESCENTE
SELECT Ano, COUNT (*) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- BUSCAR ATORES - NOMES
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

-- BUSCAR ATRIZES - ORDER 
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- BUSCAR NOME DO FILME E GENERO
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- BUSCAR NOME DO FILME DE MISTÉRIO
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

-- BUSCAR NOME DO FILMES E OS ATORES - PRIMEIRO NOME, ULTIMO NOME E PAPEL
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor


