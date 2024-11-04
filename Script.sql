alter table tabela_test rename to pessoa;

create table pessoa(
	id SERIAL primary key,
	nome VARCHAR(100),
	idade INT
);

drop table pessoa

select * from pessoa

create table enderecos(
	id SERIAL primary key,
	id_pessoa INT references pessoa(id) on delete cascade,
	rua varchar(100),
	cidade varchar(50),
	estado varchar(50),
	cep varchar(10)
);

insert into pessoa (nome, idade) values ('Joao Silva', 30);
insert into pessoa (nome, idade) values ('Maria Oliveira', 20);
insert into pessoa (nome, idade) values ('Carlos Souza', 40);
insert into pessoa (nome, idade) values ('Ana Costa', 35);



