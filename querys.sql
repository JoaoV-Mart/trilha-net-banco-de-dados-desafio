--1
	SELECT Nome, Ano FROM Filmes;

--2
	SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

--3
	SELECT Nome, Duracao FROM Filmes WHERE Nome='De Volta para o Futuro';

--4
	SELECT * FROM Filmes WHERE Ano=1997;

--5
	SELECT * FROM Filmes WHERE Ano=>2000;

--6
	SELECT * FROM Filmes WHERE Duracao>100 AND Duracao<150 ORDER BY Duracao ASC;

--7
	SELECT Ano COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Duracao DESC;

--8
	SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero='M';

--9
	SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero='F' ORDER BY PrimeiroNome;

--10
	SELECT Filmes.Nome, Generos.Genero FROM Filmes INNER JOIN FilmesGeneros ON Filmes.Id=FilmesGeneros.Id INNER JOIN Generos ON FilmesGeneros.Id=Generos.Id;

--11
	SELECT Filmes.Nome, Generos.Genero FROM Filmes INNER JOIN FilmesGeneros ON Filmes.Id=FilmesGeneros.Id INNER JOIN Generos ON FilmesGeneros.Id=Generos.Id WHERE Generos.Genero='Mistério';

--12
	SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes INNER JOIN ElencoFilme ON Filmes.Id=ElencoFilme.Id INNER JOIN Atores ON ElencoFilme.Id=Atores.Id;