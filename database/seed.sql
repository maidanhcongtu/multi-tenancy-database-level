CREATE USER tenant1 WITH PASSWORD 'tenant1' SUPERUSER CREATEDB CREATEROLE;
CREATE DATABASE tenant1;
GRANT ALL PRIVILEGES ON DATABASE tenant1 TO tenant1;
GRANT ALL PRIVILEGES ON DATABASE tenant1 TO postgres;

CREATE USER tenant2 WITH PASSWORD 'tenant2' SUPERUSER CREATEDB CREATEROLE;
CREATE DATABASE tenant2;
GRANT ALL PRIVILEGES ON DATABASE tenant2 TO tenant2;
GRANT ALL PRIVILEGES ON DATABASE tenant2 TO postgres;

CREATE USER tenant3 WITH PASSWORD 'tenant3' SUPERUSER CREATEDB CREATEROLE;
CREATE DATABASE tenant3;
GRANT ALL PRIVILEGES ON DATABASE tenant3 TO tenant3;
GRANT ALL PRIVILEGES ON DATABASE tenant3 TO postgres;


\c tenant1;

create table team_member (ID  
	bigserial not null,
 	name varchar(100),
 	primary key (ID)
);

insert into team_member(name) values	
	('Tenant 1 A'), 
	('Tenant 1 B');

\c tenant2;

create table team_member (ID  
	bigserial not null,
 	name varchar(100),
 	primary key (ID)
);

insert into team_member(name) values	
	('Tenant 2 A'), 
	('Tenant 2 B');


\c tenant3;

create table team_member (ID  
	bigserial not null,
 	name varchar(100),
 	primary key (ID)
);

insert into team_member(name) values	
	('Tenant 3 A'), 
	('Tenant 3 B');