create database fifaultimateteam;

use fifaultimateteam;

create table player(
id_player int unsigned not null auto_increment,
DNI varchar(120) not null,
Nombre varchar(120),
Apellido varchar(120),
Teléfono varchar(120),
Mail varchar(120),
primary key(id_player)
);

create table equipo(
id_equipo int unsigned not null auto_increment,
Nombre varchar(120) not null,
CantidadJugadores varchar(120) not null,
ValoraciónGlobal varchar(120) not null,
Formación varchar(120) not null,
primary key(id_equipo)
);

create table jugadores(
id_jugadores int unsigned not null auto_increment,
NumeroUniforme varchar(120) not null,
Nombre varchar(120) not null,
Nacionalidad varchar(120) not null,
Edad varchar(120) not null,
primary key(id_jugadores)
);

create table representantes(
id_representantes int unsigned not null auto_increment,
Nombre varchar(120) not null,
Apellido varchar(120) not null,
DNI varchar(120) not null,
primary key(id_representantes)
);

create table representantes_jugadores(
id int unsigned not null auto_increment,
representantesid int unsigned not null,
jugadoresid int unsigned not null,
primary key(id),
foreign key(representantesid) references representantes(id_representantes),
foreign key(jugadoresid) references jugadores(id_jugadores)
);



insert into player values (null, 42673129, "Leadnro", "Aimone", 1133047626, "aimoneleandro@gmail.com");



insert into equipo values (null, "Tenure", 20, 87, 4231);

insert into jugadores values (null, 1, "Gianluigi Donnarumma", "Italiana", 31);
insert into jugadores values (null, 2, "Presnel Kimpembe", "Francesa", 26);
insert into jugadores values (null, 6, "Marcos Aoás Corrêa", "Brasileña", 27);
insert into jugadores values (null, 3, "Ferland Mendy", "Francesa", 26);
insert into jugadores values (null, 4, "Jonathan Clauss", "Francesa", 29);
insert into jugadores values (null, 5, "N'Golo Kanté", "Francesa", 30);
insert into jugadores values (null, 12, "Alexis Claude-Maurice", "Francesa", 23);
insert into jugadores values (null, 21, "Masour Ousmane Dembélé", "Francesa", 24);
insert into jugadores values (null, 7, "Cheikh Ahmadou Bamba Mbacke Dieng", "Senegalesa", 21);
insert into jugadores values (null, 9, "Kylian Mbappé", "Francesa", 23);
insert into jugadores values (null, 20, "Romain Alessandrini", "Francesa", 32);
insert into jugadores values (null, 8, "Eden Hazard", "belga", 31);
insert into jugadores values (null, 11, "Philip Walter Foden", "británica", 21);
insert into jugadores values (null, 14, "José Luis Morales Nogales", "Española", 34);
insert into jugadores values (null, 15, "Ángel Martín Correa Martínez", "Argentina", 26);
insert into jugadores values (null, 10, "Mauro Icardi", "Argenitna", 29);
insert into jugadores values (null, 19, "Federico Chiesa", "Italiana", 24);
insert into jugadores values (null, 16, "Leon Patrick Bailey Butler", "Jamaicano", 24);
insert into jugadores values (null, 18, "Luís Rafael Soares Alves", "Portugués​", 26);
insert into jugadores values (null, 13, "Christopher Anthony Willock", "británica", 24);


insert into representantes values (null, "Francisco", "Ramos", 28456185);
insert into representantes values (null, "Julian", "Quinteros", 32564871);
insert into representantes values (null, "Lautaro", "Vallejos", 26352436);
insert into representantes values (null, "Norberto", "Prieto", 23761548);
insert into representantes values (null, "Francisco", "Ramos", 28456185);
insert into representantes values (null, "Julian", "Quinteros", 32564871);
insert into representantes values (null, "Lautaro", "Vallejos", 26352436);
insert into representantes values (null, "Norberto", "Prieto", 23761548);
insert into representantes values (null, "Francisco", "Ramos", 28456185);
insert into representantes values (null, "Julian", "Quinteros", 32564871);
insert into representantes values (null, "Lautaro", "Vallejos", 26352436);
insert into representantes values (null, "Norberto", "Prieto", 23761548);
insert into representantes values (null, "Francisco", "Ramos", 28456185);
insert into representantes values (null, "Julian", "Quinteros", 32564871);
insert into representantes values (null, "Lautaro", "Vallejos", 26352436);
insert into representantes values (null, "Norberto", "Prieto", 23761548);
insert into representantes values (null, "Francisco", "Ramos", 28456185);
insert into representantes values (null, "Julian", "Quinteros", 32564871);
insert into representantes values (null, "Lautaro", "Vallejos", 26352436);
insert into representantes values (null, "Norberto", "Prieto", 23761548);

insert into representantes_jugadores values (null, 1, 3);
insert into representantes_jugadores values (null, 2, 1);
insert into representantes_jugadores values (null, 3, 2);
insert into representantes_jugadores values (null, 7, 5);
insert into representantes_jugadores values (null, 11, 4);
insert into representantes_jugadores values (null, 4, 6);
insert into representantes_jugadores values (null, 5, 7);
insert into representantes_jugadores values (null, 9, 8);
insert into representantes_jugadores values (null, 6, 12);
insert into representantes_jugadores values (null, 8, 9);
insert into representantes_jugadores values (null, 10, 11);
insert into representantes_jugadores values (null, 12, 10);
insert into representantes_jugadores values (null, 13, 14);
insert into representantes_jugadores values (null, 14, 15);
insert into representantes_jugadores values (null, 17, 13);
insert into representantes_jugadores values (null, 15, 16);
insert into representantes_jugadores values (null, 19, 18);
insert into representantes_jugadores values (null, 16, 17);
insert into representantes_jugadores values (null, 18, 19);
insert into representantes_jugadores values (null, 20, 20);

select * from representantes inner join jugadores on representantes.id_representantes = jugadores.id_jugadores;
select representantes.Apellido, jugadores.Nombre from representantes inner join jugadores on representantes.id_representantes = jugadores.id_jugadores;

