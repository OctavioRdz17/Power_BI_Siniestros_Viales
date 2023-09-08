-- Base de datos Siniestros

-- DROP DATABASE IF EXISTS siniestros;
CREATE DATABASE IF NOT EXISTS siniestros;
USE siniestros;

-- Tabla homicidios
DROP TABLE IF EXISTS homicidios;
CREATE TABLE homicidios (
    ID_HECHO VARCHAR(50) NOT NULL PRIMARY KEY,
    N_VICTIMAS INT,
    FECHA DATE,
    HORA TIME,
    TIPO_DE_CALLE VARCHAR(50),
    COMUNA VARCHAR(9),
    XY VARCHAR(50),
    LONGITUD VARCHAR(50),
    LATITUD VARCHAR(50),
    VEHICULO_ACUSADO VARCHAR(50)
);


LOAD DATA INFILE 'datasets/df_homicidios.csv'
INTO TABLE homicidios
FIELDS TERMINATED BY ',' -- Delimitador de campo en tu archivo CSV
LINES TERMINATED BY '\n' -- Delimitador de línea en tu archivo CSV
IGNORE 1 LINES; -- Si la primera línea contiene encabezados, omítela 



