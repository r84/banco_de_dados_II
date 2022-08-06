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
    "Create table students"
AS
    "INFO";

DROP TABLE IF EXISTS students;

CREATE TABLE students(
    id_students         INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name          VARCHAR(255),
    last_name           VARCHAR(255),
    gender              ENUM('MA','FE'),
    code_registration   INTEGER UNIQUE,
    created_at          DATETIME DEFAULT NOW(),
    deleted_at          DATETIME
);

DESCRIBE students;

INSERT INTO students(
    first_name,
    last_name,
    gender,
    code_registration
)
    VALUES
(
    'Raphael',
    'Stanula',
    'MA',
    1
),
(
    'Silvio',
    'Santos',
    'MA',
    2
),
(
    'Hebe',
    'Camargo',
    'FE',
    3
);