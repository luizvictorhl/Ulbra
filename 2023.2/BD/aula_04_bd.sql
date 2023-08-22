-- 1- Crie uma view que mostra os detalhes dos livros
CREATE VIEW DetalhesLivros AS
SELECT Livros.LivroID, Livros.Titulo, Autores.NomeAutor
FROM Livros
JOIN Autores ON Livros.AutorID = Autores.AutorID;

-- 2 - Crie uma view que mostra o número de livros por autor
CREATE VIEW LivrosPorAutor AS
SELECT Autores.NomeAutor, COUNT(Livros.LivroID) AS NumeroLivros
FROM Autores
LEFT JOIN Livros ON Autores.AutorID = Livros.AutorID
GROUP BY Autores.NomeAutor;


-- 3 - Crie uma view que mostra os livros de um autor específico
CREATE VIEW LivrosDoAutor AS
SELECT Livros.LivroID, Livros.Titulo
FROM Livros
JOIN Autores ON Livros.AutorID = Autores.AutorID
WHERE Autores.NomeAutor = 'Nome';

-- Criação de uma views que lista os livros com seus titulos e autores, ordenados por titulo

CREATE VIEW LivrosOrdenados AS
SELECT Livros.LivroID, Livros.Titulo, Livros.AutorID, Autores.NomeAutor FROM Livros 
JOIN Autores ON Livros.AutorID = Autores.AutorID
ORDER BY Livros.Titulo ASC 

-- Criação de uma view que mostra o número medio de livros por autor

SELECT NomeAutor, AVG(COUNT(*)) AS TotalLivro FROM Autores
JOIN Livros ON Autores.AutorID = Livros.AutorID
GROUP BY NomeAutor

-- Criação 
