--TABLAS SERVER

CREATE DATABASE ComiBack;
USE ComiBack;

CREATE TABLE Roles (
ID int auto_increment not null,
Rol varchar (40) not null,
PRIMARY KEY (ID)
);

CREATE TABLE Usuarios (
IDUsuario int auto_increment not null,
IDRol int not null,
Mail varchar(50) not null,
Contrasena varchar(40) not null,
PassChange tinyint(1) NOT NULL,
Activo tinyint(1) NOT NULL,
PRIMARY KEY (IDUsuario),
FOREIGN KEY (IDRol) REFERENCES Roles(ID)
);

INSERT INTO Roles (Rol)
VALUES ("Cliente"),
("Empresa"),
("Administrador");

INSERT INTO usuarios (IDUsuario, IDRol, Mail, Contrasena, PassChange, Activo) VALUES
(1, 3, 'adm123@gmail.com', '123', 1, 1)