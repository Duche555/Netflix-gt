
CREATE TABLE Estrenos (
                Fecha DATE NOT NULL,
                Pais NUMERIC(10) NOT NULL,
                Idioma VARCHAR(20) NOT NULL,
                PRIMARY KEY (Fecha)
);


CREATE TABLE genero (
                Categoria VARCHAR(20) NOT NULL,
                Fecha_1 DATE NOT NULL,
                Edad INT NOT NULL,
                Restricciones VARCHAR(25) NOT NULL,
                PRIMARY KEY (Categoria, Fecha_1)
);


CREATE TABLE detalles_pelicula (
                Direccion VARCHAR(20) NOT NULL,
                Categoria_1 VARCHAR(20) NOT NULL,
                Actor VARCHAR(20) NOT NULL,
                Duracion INT NOT NULL,
                PRIMARY KEY (Direccion, Categoria_1)
);


CREATE TABLE Encabezado (
                Nombre VARCHAR(20) NOT NULL,
                Direccion1 VARCHAR(20) NOT NULL,
                tipo VARCHAR(20) NOT NULL,
                PRIMARY KEY (Nombre, Direccion1)
);


ALTER TABLE genero ADD CONSTRAINT estrenos_genero_fk
FOREIGN KEY (Fecha_1)
REFERENCES Estrenos (Fecha)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE detalles_pelicula ADD CONSTRAINT genero_detalles_pelicula_fk
FOREIGN KEY (Categoria_1)
REFERENCES genero (Categoria)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Encabezado ADD CONSTRAINT detalles_pelicula_encabezado_fk
FOREIGN KEY (Direccion1)
REFERENCES detalles_pelicula (Direccion)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
