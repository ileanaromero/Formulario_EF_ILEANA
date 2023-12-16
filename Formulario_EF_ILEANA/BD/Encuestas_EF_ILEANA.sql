CREATE DATABASE Encuestas
GO 

USE Encuestas
GO

CREATE TABLE Encuestas (
    NumeroEncuesta INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Edad INT NOT NULL,
    CorreoElectronico VARCHAR(50) NOT NULL
);

CREATE TABLE PartidosPoliticos (
    PartidoID INT IDENTITY(1,1) PRIMARY KEY,
    Partido VARCHAR(50) NOT NULL
);

GO

CREATE PROCEDURE AgregarEncuesta
    @Nombre VARCHAR(50),
    @Edad INT,
    @CorreoElectronico VARCHAR(50),
    @PartidoPolitico VARCHAR(50)
AS
BEGIN
    INSERT INTO Encuestas (Nombre, Edad, CorreoElectronico)
    VALUES (@Nombre, @Edad, @CorreoElectronico);

    INSERT INTO PartidosPoliticos (Partido)
    VALUES (@PartidoPolitico);
END

GO

CREATE PROCEDURE ReporteEncuestas
AS
BEGIN
    SELECT e.NumeroEncuesta, e.Nombre, e.Edad, e.CorreoElectronico, p.Partido
    FROM Encuestas e
    JOIN PartidosPoliticos p ON e.PartidoID = p.PartidoID;
END