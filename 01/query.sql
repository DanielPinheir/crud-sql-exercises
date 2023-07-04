-- Challenge 1 Readme.md
-- Create database
CREATE DATABASE exercicio_crud_sql;

create table usuarios (
	id serial,
  	nome text not null,
  	idade smallint,
  	email varchar(50),
  	senha varchar(8) not null
);

-- Challenge 2 Readme.md
-- Insert data
INSERT INTO usuarios (nome, idade, email, senha) 
VALUES ('Aretha Montgomery', 30, 'augue.id.ante@odioAliquam.com', 'a0B13O3L'),
('Camden H. Bartlett', 15, 'turpis.vitae.purus@risusDuisa.ca', 'p3P96F3Q'),
('Raja W. Coffey', 30, 'raja.feugiat@nonummy.com', 's5F51T7L'),
('Elton D. Olsen', 29, 'auctor@duiFuscediam.edu', 'k5X25B0R'),
('Shelley E. Frederick', 20, 'raja.feugiat@nonummy.com', 'u2D18F6E');


-- Challenge 3 Readme.md
-- Update data
UPDATE usuarios 
SET nome = 'Raja W. Coffey Thomas' 
WHERE email = 'raja.feugiat@nonummy.com';

-- Challenge 4 Readme.md
-- Delete data
DELETE FROM usuarios 
WHERE email='raja.feugiat@nonummy.com';

-- Alter table
ALTER TABLE usuarios 
ADD CONSTRAINT email_unique_usuarios 
UNIQUE(email);

-- Challenge 5 
-- Insert data
INSERT INTO usuarios (nome, idade, email, senha) 
VALUES ('Jermaine G. Sellers', 16, 'ligula.Nullam@tortordictum.co.uk', 'o2P56U9U'),
('James D. Kennedy', 23, 'amet@Nulladignissim.com', 'q6B78V3V'),
('Amelia S. Harris', 29, 'nec.metus.facilisis@vitaealiquet.edu', 'l4S64Y3A'),
('Joel M. Hartman', 18, 'montes.nascetur@odiotristique.co.uk', 'c4Q27D7O'),
('Elmo K. Greer', 18, 'risus.Duis@eget.ca', 'e3P92I7R');

-- Add Column
ALTER TABLE usuarios 
ADD column situacao 
BOOLEAN DEFAULT true;

-- Challenge 6
-- UPDATE record
UPDATE usuarios 
SET situacao = false 
WHERE email = 'montes.nascetur@odiotristique.co.uk';

