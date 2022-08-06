SELECT 
    "Use MySql database"
AS 
    "INFO";

use mysql;

SELECT 
    "Drop database aula01 if exists"
AS 
    "INFO";

DROP DATABASE IF EXISTS aula01;

SELECT 
    "The creation of database"
AS 
    "INFO";

CREATE DATABASE aula01;

SELECT
    "Use of database"
AS
    "INFO";

USE aula01;

SELECT
    "Create table alunos"
AS
    "INFO";

DROP TABLE IF EXISTS alunos;

CREATE TABLE alunos(
    id_aluuno           INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name          VARCHAR(255),
    last_name           VARCHAR(255),
    gender              ENUM('MA','FE'),
    code_registration   INTEGER,
    created_at          DATETIME DEFAULT NOW()
);

DESCRIBE alunos;