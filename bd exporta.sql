create database bd_exporta1e;

Create table departamento (
id INT PRIMARY KEY auto_increment not null,
nome varchar(50),
localizacao varchar (50),
orcamento decimal(10,2)
);

insert into departamento (nome, localizacao, orcamento) values
('Recurso Humanos', 'São Paulo', 50000.00),
('Financeiro', 'Rio de Janeiro', 75000.00),
('Marketing', 'Belo Horizonte', 60000.00),
('TI', 'Curitiba', 90000.00),
('Vendas', 'Porto Alegre', 45000.00);

SELECT * FROM departamento
INTO outfile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\depto.csv'
FIELDS terminated by ',' enclosed by '"'
LINES terminated by '\n';

SHOW VARIABLES LIKE 'secure_file_priv';

delete from departamento
where id= 4;

load data infile 'C;\\ProgramData\\MySQL\\\MySQL Server 8.0\\Uploads\\depto.csv'
into table departamento
fields terminated by',' enclosed by'"'
lines terminated by '\n';


START TRANSACTION;

update departamento SET orcamento = orcamento + 1000.00 where nome = 'TI';
update departamento SET orcamento = orcamento + 1000.00 where nome = 'Financeiro';

commit;




