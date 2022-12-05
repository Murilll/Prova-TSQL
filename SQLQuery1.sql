CREATE DATABASE AlunoClass
USE AlunoClass
GO 

CREATE TABLE Aluno(
	id INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(30),
	CPF VARCHAR(30),
	Dt_nasc DATE, CHECK(Dt_nasc > '01.01.1922')
	)

CREATE TABLE Professor(
	id INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(30),
	CPF VARCHAR(30)
	)

CREATE TABLE Curso(
	id INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(30),
	Ativo BIT DEFAULT(1)
	)

CREATE TABLE Disciplina(
	id INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(30),
	Ativo BIT DEFAULT(1)
	)

CREATE TABLE DisciplinaxCurso(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_Curso INT FOREIGN KEY REFERENCES Curso(id),
	id_Disciplina INT FOREIGN KEY REFERENCES Disciplina(id),
	Ativo BIT DEFAULT(1)
	)

CREATE TABLE Turma(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_Aluno INT FOREIGN KEY REFERENCES Aluno(id),
	id_Professor INT FOREIGN KEY REFERENCES Professor(id),
	id_Disciplina_Curso INT FOREIGN KEY REFERENCES DisciplinaxCurso(id),
	Nota1 INT,
	Nota2 INT,
	Nota3 INT,
	Nota4 INT,
	NotaFinal INT,
	Ativa BIT DEFAULT(1)
	)

CREATE TABLE Pagamentos(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_Aluno INT FOREIGN KEY REFERENCES Aluno(id),
	Boleto DATE,
	Situação VARCHAR(30), CHECK(Situação = 'Pendente' or Situação = 'Pago' or Situação = 'Em atraso' )
	)

INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Murilo', '978.132.860-65', '25.08.2004')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Amanda', '960.412.820-57', '11.09.2000')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Patricia', '423.274.900-49', '01.12.2003')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Pedro', '467.787.100-04', '28.08.2005')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Tiago', '750.114.790-64', '07.01.2004')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Gabriele', '121.571.710-53', '24.10.2002')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Leonardo', '830.909.890-18', '10.11.2003')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Lucas', '922.042.760-57', '19.07.2004')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Vitor', '217.285.380-17', '21.03.2002')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Gabriel', '263.730.320-43', '26.02.2000')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Julia', '469.595.710-81', '14.05.2001')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Junior', '978.132.860-32', '25.08.2004')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Hemerson', '960.412.820-51', '11.09.2000')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Emanuelly', '423.274.900-42', '01.12.2003')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Maite', '467.787.100-14', '28.08.2005')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Iago', '750.114.790-65', '07.01.2004')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Felipe', '121.571.710-07', '24.10.2002')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Andre', '830.909.890-19', '10.11.2003')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Jonas', '922.042.760-53', '19.07.2004')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Queila', '217.285.380-11', '21.03.2002')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Fabio', '263.730.320-49', '26.02.2000')
INSERT Aluno(Nome,  CPF, Dt_nasc) VALUES ('Andressa', '469.595.710-91', '14.05.2001')

INSERT Professor(Nome, CPF) VALUES ('Flavio Prada', '120.745.670-57')
INSERT Professor(Nome, CPF) VALUES ('Amanda Nunes', '798.741.350-00')
INSERT Professor(Nome, CPF) VALUES ('Marli Maria', '000.079.750-23')
INSERT Professor(Nome, CPF) VALUES ('Cesar Paulo', '846.566.130-88')
INSERT Professor(Nome, CPF) VALUES ('Diogo Defante', '010.981.650-12')
INSERT Professor(Nome, CPF) VALUES ('Paulo Edson', '819.928.820-53')

INSERT Curso VALUES ('Engenharia de Software', 1)
INSERT Curso VALUES ('Engenharia Civil', 0)
INSERT Curso VALUES ('Medicina', 0)
INSERT Curso VALUES ('Engenharia de Alimentos', 1)
INSERT Curso(Nome) VALUES ('Desenvolvimento de Sistema')
INSERT Curso(Nome) VALUES ('Agropecuária')

INSERT Disciplina VALUES ('Matematica', 1)
INSERT Disciplina VALUES ('Portugues', 0)
INSERT Disciplina VALUES ('Historia', 0)
INSERT Disciplina VALUES ('Geografia', 1)
INSERT Disciplina VALUES ('Matematica Avançado', 1)
INSERT Disciplina VALUES ('Ingles', 0)
INSERT Disciplina(Nome) VALUES ('Ciencias')
INSERT Disciplina(Nome) VALUES ('Empreendedorismo')

INSERT DisciplinaxCurso VALUES(1, 1, 1)
INSERT DisciplinaxCurso VALUES(2, 2, 1)
INSERT DisciplinaxCurso VALUES(3, 2, 1)
INSERT DisciplinaxCurso VALUES(4, 3, 1)
INSERT DisciplinaxCurso VALUES(5, 5, 1)
INSERT DisciplinaxCurso VALUES(1, 2, 1)

INSERT Turma VALUES(1, 3, 1, 71, 80, 100, 51, 302, 1)
INSERT Turma VALUES(6, 4, 2, 71, 80, 100, 31, 261, 1)
INSERT Turma VALUES(8, 2, 1, 71, 80, 46, 78, 123, 0)
INSERT Turma VALUES(9, 1, 2, 100, 67, 89, 78 ,100, 1)


INSERT Pagamentos VALUES(1, '21.03.2022', 'Pago' )
INSERT Pagamentos VALUES(2, '10.03.2024', 'Pago' )
INSERT Pagamentos VALUES(3, '03.03.2022', 'Pago' )
INSERT Pagamentos VALUES(4, '23.03.2022', 'Pago' )
INSERT Pagamentos VALUES(5, '12.03.2024', 'Pago' )
INSERT Pagamentos VALUES(6, '21.03.2022', 'Pago' )
INSERT Pagamentos VALUES(7, '10.03.2022', 'Pago' )
INSERT Pagamentos VALUES(8, '03.01.2024', 'Pago' )
INSERT Pagamentos VALUES(9, '23.03.2022', 'Pago' )
INSERT Pagamentos VALUES(10, '12.03.2024', 'Pago' )
INSERT Pagamentos VALUES(11, '21.03.2022', 'Pago' )
INSERT Pagamentos VALUES(12, '10.03.2024', 'Pago' )
INSERT Pagamentos VALUES(13, '03.03.2024', 'Pago' )
INSERT Pagamentos VALUES(14, '23.03.2024', 'Pago' )
INSERT Pagamentos VALUES(15, '12.03.2022', 'Pago' )


CREATE TRIGGER impedeDelete
ON Disciplina
INSTEAD OF DELETE
AS
BEGIN
DECLARE @id INT
SELECT @id = id FROM deleted
UPDATE Disciplina SET ativo = 0  WHERE id= @id
END

CREATE TRIGGER impedeDeleteCurso
ON Curso
INSTEAD OF DELETE
AS
BEGIN
DECLARE @id INT
SELECT @id = id FROM deleted
UPDATE Curso SET ativo = 0  WHERE id = @id
END

DELETE FROM Disciplina WHERE id = 1
DELETE FROM Curso WHERE id = 8


CREATE OR ALTER VIEW MostrandoAlunos
AS
SELECT A.Nome, T.id_Disciplina_Curso, T.Nota1, T.Nota2, T.Nota3, T.Nota4, T.NotaFinal FROM Aluno A
	JOIN Turma T ON A.id = T.id_Aluno

ALTER PROC VerificarBoleto
AS
BEGIN
	SELECT *
	FROM Pagamentos P
	UPDATE Pagamentos SET Situação = 'Em atraso' WHERE Boleto < GETDATE() 
	UPDATE Pagamentos SET Situação = 'Pendente' WHERE Boleto > GETDATE()
END

EXEC VerificarBoleto

SELECT* FROM MostrandoAlunos
SELECT * FROM Aluno
SELECT * FROM Professor
SELECT * FROM Curso
SELECT * FROM Disciplina
SELECT * FROM Turma
SELECT * FROM DisciplinaxCurso
SELECT * FROM Pagamentos

