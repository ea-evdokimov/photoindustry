drop schema if exists photo cascade;
create schema photo;

set search_path = photo;

-- create database PHOTOINDUSTRY_DATABASE;

drop table if exists CLIENT, MODEL, STUDIO, STUFF, SCENE, PROJECT, PORTFOLIO, PHOTOGRAPH cascade;

create table PHOTOGRAPH
(
    photograph_id integer PRIMARY KEY,
    photograph_nm text check (photograph_nm like '% % %'),
    salary        numeric(10, 1)
);

create table PORTFOLIO
(
    portfolio_url text not null,
    photograph_id integer,
    foreign key (photograph_id)
        references PHOTOGRAPH (photograph_id)
        on update cascade
);

create table CLIENT
(
    client_id integer PRIMARY KEY,
    client_nm text not null
);

create table MODEL
(
    model_id integer PRIMARY KEY,
    model_nm text check (model_nm like '% % %'),
    salary   numeric(10, 1)
);

create table STUFF
(
    stuff_id   integer PRIMARY KEY,
    stuff_desc text not null,
    price      numeric(19, 2)
);

create table STUDIO
(
    studio_id   integer PRIMARY KEY,
    studio_nm   text not null,
    address_txt text not null,
    price       numeric(10, 1)
);

create table SCENE
(
    scene_id    integer PRIMARY KEY,
    scene_type  text not null,
    address_txt text not null,
    price       numeric(10, 1)
);

create table PROJECT
(
    project_id    integer PRIMARY KEY,
    project_desc  text    not null,
    studio_id     integer not null,
    photograph_id integer,
    client_id     integer not null,
    scene_id      integer,
    model_id      integer,
    stuff_id      integer,
    price         numeric(10, 1),
    data          date    not null,

    foreign key (photograph_id)
        references PHOTOGRAPH (photograph_id)
        on update cascade,
    foreign key (studio_id)
        references STUDIO (studio_id)
        on update cascade,
    foreign key (client_id)
        references CLIENT (client_id)
        on update cascade,
    foreign key (model_id)
        references MODEL (model_id)
        on update cascade,
    foreign key (stuff_id)
        references STUFF (stuff_id)
        on update cascade,
    foreign key (scene_id)
        references SCENE (scene_id)
        on update cascade
);

