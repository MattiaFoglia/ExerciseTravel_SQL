drop database if exists agenzia_viaggi;

create database if not exists agenzia_viaggi;
use agenzia_viaggi;

create table if not exists turista(
	id_turista int primary key not null,
    nome varchar(64) not null,
    cognome varchar(64) not null,
    nascita date not null,
    telefono varchar(12) not null
);

create table if not exists viaggio(
	id_viaggio int primary key not null,
    localita varchar(64) not null,
    durata int not null,
    costo int not null,
    partenza date not null
);

create table if not exists prenotazione(
	id_prenotazione int primary key not null,
    data_prenotazione date not null,
	tipo_pagamento varchar(64) not null,
    
    id_turista int not null,
    id_viaggio int not null,
    
    foreign key (id_turista) references turista(id_turista),
    foreign key (id_viaggio) references viaggio(id_viaggio)
);

insert into turista values(1, 'Mario', 'Rossi', '2004-6-01', '333 333 3333');
insert into turista values(2, 'Francesca', 'Verdi', '2004-6-02', '444 444 4444');
insert into turista values(3, 'Carlo', 'Rolli', '2004-6-03', '555 555 5555');
insert into turista values(4, 'Michele', 'Gialli', '2004-6-04', '666 666 6666');
insert into turista values(5, 'Renato', 'Rappi', '2004-6-05', '777 777 7777');

insert into viaggio values(1, 'Monaco', 8, 200, '2022-1-01');
insert into viaggio values(2, 'Vienna', 16, 400, '2022-2-02');
insert into viaggio values(3, 'Praga', 12, 600, '2022-3-03');
insert into viaggio values(4, 'Berlino', 12, 300, '2022-3-03');

insert into prenotazione values(1, '2018-12-01', 'carta', 1, 1);
insert into prenotazione values(2, '2022-1-02', 'carta', 1, 2);
insert into prenotazione values(3, '2022-1-03', 'carta', 1, 4);

insert into prenotazione values(4, '2018-12-20', 'contante', 2, 1);
insert into prenotazione values(5, '2022-1-06', 'contante', 2, 2);

insert into prenotazione values(6, '2022-1-03', 'carta', 3, 1);
insert into prenotazione values(7, '2018-12-02', 'carta', 3, 2);

insert into prenotazione values(8, '2022-1-04', 'contante', 4, 4);
insert into prenotazione values(9, '2022-1-02', 'contante', 4, 2);

insert into prenotazione values(10, '2022-1-04', 'carta', 5, 1);
insert into prenotazione values(11, '2022-1-05', 'carta', 5, 4);
insert into prenotazione values(12, '2022-1-02', 'contante', 5, 2);


