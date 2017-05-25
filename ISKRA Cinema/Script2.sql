create database Cinema;

use Cinema;

create table Login (id INTEGER AUTO_INCREMENT,
						idemp INTEGER,
						login varchar(15),
						password varchar(60),
						PRIMARY KEY (id),
						FOREIGN KEY (idemp) REFERENCES Login(idemp)
						ON DELETE CASCADE
						ON UPDATE RESTRICT);
						
						
create table Password(id INTEGER AUTO_INCREMENT,
						idemp INTEGER,
						login varchar(15),
					    password varchar(60),
						PRIMARY KEY (id),
						FOREIGN KEY (idemp) REFERENCES Password(idemp)
						ON DELETE CASCADE
						ON UPDATE RESTRICT);


create table Movies(id INTEGER AUTO_INCREMENT,
						idemp INTEGER,
						PRIMARY KEY (id),
						FOREIGN KEY (idemp) REFERENCES Movies(idemp)
						ON DELETE CASCADE
						ON UPDATE RESTRICT);
						
						

insert into login VALUES(1,'Maros','Zoricak','maroszoricak@gmail.com','C');
insert into login VALUES(2,'Adrian','Matta','AdrianMatta67@gmail.com','C');
insert into login VALUES(3,'Matej','Novak','MatejNovak@akademisovy.sk','C');
insert into login VALUES(4,'Jozef','Mrkva','JozefMrkva@centrum.sk','C');
insert into login VALUES(5,'Jano','Slivka','JSlivka@azet.sk.sk','C');

insert into password values(1,1,'maros','maros');
insert into password values(2,2,'Adrian','Adrian');
insert into password values(3,3,'Matej','Matej');
insert into password values(4,4,'Jozef','Jozef');
insert into password values(5,5,'Jano','Jano');


insert into Movies values(1,'Maros je smrt 2','C');