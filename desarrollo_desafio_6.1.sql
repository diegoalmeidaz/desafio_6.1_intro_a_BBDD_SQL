-- Begin sesion with the following command on the terminal (en mac: psql -U postgres -W)


-- Database creation

CREATE DATABASE desafio_Diego_Almeida_985;

--selection of the database

\c desafio_Diego_Almeida_985;

--table creation

CREATE TABLE clientes(
  id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  nombre_cliente VARCHAR,
  telefono VARCHAR(16),
  compañia VARCHAR(50),
  priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10)
);

--data instert

INSERT INTO clientes (email, nombre_cliente, telefono, compañia, priority) VALUES ('nicolas@fanny.com', 'Nicolas', '123456789', 'Fancorp', 10),
('felipe@moido.com', 'Felipe', '123456789', 'Eme', 9),('francisco@arosh.com', 'Francisco', '123456789', 'Automac', 8),
('tomas@silverio.com', 'Tomas', '123456789', 'DQ', 7),('matias@daemon.com', 'Matias', '123456789', 'MHCorp', 6);

--Top three priority clients, shown by console: 

SELECT * FROM clientes ORDER BY priority DESC, id ASC LIMIT 3;

-- 2 clientes shown by console, by selecting 1 through it's priority and the other from it's company name

SELECT * FROM clientes WHERE priority = 10 OR compañia = 'Eme';
-- finish the challenge by quiting Postgre

\q