create DATABASE universe;
\c universe
create table galaxy(id serial primary key,name varchar,lat int ,lon int,tamano numeric);
create table star(id serial primary key,name,lat int,lon int,pequeno boolean,galaxy int,CONSTRAINT fk_galaxy FOREIGN KEY(galaxy)REFERENCES galaxy(id));
create table planet(id serial primary key,name varchar,lat int ,lon int,pequeno boolean,star int,CONSTRAINT fk_star FOREIGN KEY(star)REFERENCES star(id));
create table moon(id serial primary key,name varchar,lat int ,lon int,descrip text,planet int,CONSTRAINT fk_planet FOREIGN KEY(planet)REFERENCES planet(id));
create table bitacora(id serial primary key,name varcahr,regis int,regist2 int);

insert into galaxy (name,lat,lon,tamano); values ('btreb',728,27,892);
insert into galaxy (name,lat,lon,tamano); values ('ebge',588,8996,8228);
insert into galaxy (name,lat,lon,tamano); values ('rn',,288,5282);
insert into galaxy (name,lat,lon,tamano); values ('wbwb',252552,55,62);
insert into galaxy (name,lat,lon,tamano); values ('rtnw',867,5637,952);
insert into galaxy (name,lat,lon,tamano); values ('wbtw',8676,768,9288);

insert into star (name,lat,lon,pequeno,galaxy); values ('bs',7417,221,true,1);
insert into star (name,lat,lon,pequeno,galaxy); values ('rebg',717,826,false,2);
insert into star (name,lat,lon,pequeno,galaxy); values ('rtnrt',646943,2688,false,3);
insert into star (name,lat,lon,pequeno,galaxy); values ('mtms',62,862,false,4);
insert into star (name,lat,lon,pequeno,galaxy); values ('rtd',8628,862,true,5);
insert into star (name,lat,lon,pequeno,galaxy); values ('thsxn',82,2282,false,6);





insert into planet (name,lat,lon,pequeno,star) values ('tierra',14956,146949,true,1);
insert into planet (name,lat,lon,pequeno,star) values ('plut',24785,7224,true,2);
insert into planet (name,lat,lon,pequeno,star) values ('afasf',7224,2348,false,3);
insert into planet (name,lat,lon,pequeno,star) values ('afarw',8763,47523,true,4);
insert into planet (name,lat,lon,pequeno,star) values ('3rqr',2348,8763,false,5);
insert into planet (name,lat,lon,pequeno,star) values ('afaw',7224,24785,false,6);
insert into planet (name,lat,lon,pequeno,star) values ('tier',14956,146949,true,1);
insert into planet (name,lat,lon,pequeno,star) values ('edflut',24785,7224,true,2);
insert into planet (name,lat,lon,pequeno,star) values ('hjhasf',7224,2348,false,3);
insert into planet (name,lat,lon,pequeno,star) values ('oiuarw',8763,47523,true,4);
insert into planet (name,lat,lon,pequeno,star) values ('zcvxqr',2348,8763,false,5);
insert into planet (name,lat,lon,pequeno,star) values ('vfrfaw',7224,24785,false,6);
insert into moon (name,lat,lon,descrip,planet) values ('rggn',74386,8963,'enttzfg',1);
insert into moon (name,lat,lon,descrip,planet) values ('fgn',7278,78686,'zfdnft',2);
insert into moon (name,lat,lon,descrip,planet) values ('snfe',786,32135,'senfe<',3);
insert into moon (name,lat,lon,descrip,planet) values ('nefesnf',373,8767,'sdf',4);
insert into moon (name,lat,lon,descrip,planet) values ('seff',,87671238,'enrf',5);
insert into moon (name,lat,lon,descrip,planet) values ('afn',8876,56387,'enrfr',6);
insert into moon (name,lat,lon,descrip,planet) values ('esannf',64648,384,'<ern',7);
insert into moon (name,lat,lon,descrip,planet) values ('enfne',9645,4876,'e<nr',8);
insert into moon (name,lat,lon,descrip,planet) values ('efnea',898,0282,'wetrn',9);
insert into moon (name,lat,lon,descrip,planet) values ('anfewar',8989,89014,'tne',10);
insert into moon (name,lat,lon,descrip,planet) values ('arna',328658,8686,'enren',11);
insert into moon (name,lat,lon,descrip,planet) values ('arnan',868,882608,'e<nrt<rt',12);
insert into moon (name,lat,lon,descrip,planet) values ('dfgrggn',74386,8963,'enttzfg',1);
insert into moon (name,lat,lon,descrip,planet) values ('dgsfgn',7278,78686,'zfdnft',2);
insert into moon (name,lat,lon,descrip,planet) values ('yresnfe',786,32135,'senfe<',3);
insert into moon (name,lat,lon,descrip,planet) values ('grgnefesnf',373,8767,'sdf',4);
insert into moon (name,lat,lon,descrip,planet) values ('vgdseff',,87671238,'enrf',5);
insert into moon (name,lat,lon,descrip,planet) values ('cgrafn',8876,56387,'enrfr',6);
insert into moon (name,lat,lon,descrip,planet) values ('rgnesannf',64648,384,'<ern',7);
insert into moon (name,lat,lon,descrip,planet) values ('sefeenfne',9645,4876,'e<nr',8);
insert into moon (name,lat,lon,descrip,planet) values ('ernefnea',898,0282,'wetrn',9);
insert into moon (name,lat,lon,descrip,planet) values ('nereanfewar',8989,89014,'tne',10);
insert into bitacora (name,regis,regist2) values ('ebf',186,82);
insert into bitacora (name,regis,regist2) values ('greb',2582,786);
insert into bitacora (name,regis,regist2) values ('bjhgvf',8767,7892);

ALTER TABLE galaxy ALTER COLUMN name set NOT NULL;
ALTER TABLE galaxy ALTER COLUMN lat set NOT NULL;
ALTER TABLE galaxy ADD CONSTRAINT constraint_name UNIQUE (name);

ALTER TABLE star ALTER COLUMN name set NOT NULL;
ALTER TABLE star ALTER COLUMN lat set NOT NULL;
ALTER TABLE star ADD CONSTRAINT constraint_name2 UNIQUE (name);

ALTER TABLE planet ALTER COLUMN name set NOT NULL;
ALTER TABLE planet ALTER COLUMN lat set NOT NULL;
ALTER TABLE planet ADD CONSTRAINT constraint_name3 unique (name);

ALTER TABLE moon ALTER COLUMN name set NOT NULL;
ALTER TABLE moon ALTER COLUMN lat set NOT NULL;
ALTER TABLE moon ADD CONSTRAINT constraint_name4 unique (name);

ALTER TABLE bitacora ALTER COLUMN name set NOT NULL;
ALTER TABLE bitacora ALTER COLUMN regis set NOT NULL;
ALTER TABLE bitacora ADD CONSTRAINT constraint_name5 unique (name);

ALTER TABLE galaxy RENAME COLUMN id TO galaxy_id;
ALTER TABLE star RENAME COLUMN id TO star_id;
ALTER TABLE planet RENAME COLUMN id TO planet_id;
ALTER TABLE moon RENAME COLUMN id TO moon_id;
ALTER TABLE bitacora RENAME COLUMN id TO bitacora_id;


ALTER TABLE star RENAME COLUMN galaxy TO galaxy_id;
ALTER TABLE planet RENAME COLUMN star TO star_id;
ALTER TABLE moon RENAME COLUMN planet TO planet_id;
