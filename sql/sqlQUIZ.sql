create database quizz;
use quizz;

create table jogador(
id_jogador int unsigned auto_increment not null,
nome varchar (60) not null,
email varchar (60) not null,
hashed_senha varchar (60),
primary key(id_jogador)
);

create table perguntas(
id_pergunta int unsigned auto_increment,
pergunta varchar (60) not null,
categoria varchar (60) not null,
primary key (id_pergunta)

);

create table respostas(
resposta_certa varchar (60) not null,
resposta_errada1 varchar (60) not null,
resposta_errada2 varchar (60) not null,
resposta_errada3 varchar (60) not null,
id_pergunta int unsigned,
foreign key (id_pergunta) references perguntas(id_pergunta)

);

