drop database if exists Thali ;
create database Thali ;

use Thali ;

create table Objectif (
    code int,
    libelle varchar(50),
    primary key (code)
);

create table  Soin (
    code int,
    libelle varchar(50),
    primary key (code)
);

create table  Criteres (
    num int,
    cure varchar (50),
    libelle varchar (50),
    primary key (num)
);

create table  Cure (
    code varchar(50),
    nom varchar(50),
    vertus varchar(50),
    visiteMedicale boolean,
    remboursementPossible boolean,
    primary key (code)
);

create table  Avoir (
    cure varchar(50),
    objectif int,
    foreign key (cure) references Cure(code),
    foreign key  (objectif) references Objectif(code),
    primary key (cure, objectif)
);

create table  Comporter (
    cure varchar(50) ,
    soin int,
    nb int,
    foreign key (cure) references Cure(code),
    foreign key (soin) references Soin(code),
    primary key (cure, soin)
);

create table Saison (
    code int,
    annee int,
    libelle varchar(50),
    primary key (code)
);

create table  TariferCure (
    cure varchar(50),
    saison int,
    montant int,
    foreign key(cure) references Cure(code),
    foreign key(saison) references Saison(code),
    primary key (cure,saison)
);

create table  Situation (
    code int,
    libelle varchar(50),
    primary key(code)
);

create table  NatureChambre (
    code int,
    libelle varchar(50),
    primary key (code)
);

create table  TariferHebergement (
    saison int,
    annee int,
    natureChambre int,
    situation int,
    tarif int,
    foreign key (saison) references Saison(code),
    foreign key  (natureChambre) references NatureChambre(code),
    foreign key  (situation) references Situation(code),
    primary key (saison,natureChambre,situation)
    );
    
create table Periode (
    num int,
    saison int,
    annee int,
    debut varchar(50),
    fin varchar(50),
    primary key (num, saison, annee),
    foreign key (saison) REFERENCES Saison(code)
);

