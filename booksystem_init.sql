CREATE TABLE Hotels(
	nameH VARCHAR(20) not null,
	location VARCHAR(100) not null,
	facility VARCHAR(100) not null, 
	star INTEGER not null check(star <= 5),
	contact VARCHAR(20) not null, 
	idH VARCHAR(20) unique,
	
	PRIMARY KEY (idH)
);


CREATE TABLE Rooms(
	type VARCHAR(10) not null check (type in ('economy', 'standard', 'superior')),
	size integer not null,
	price integer not null,
	status VARCHAR(20) not null check (status in ('available', 'unavailable')),
	idR VARCHAR(20) not null,
	idH VARCHAR(20) not null,
	
	PRIMARY KEY (idR, idH),
	FOREIGN KEY (idH) REFERENCES Hotels(idH)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

create table Users(
	idU VARCHAR(20) unique,
	age INTEGER not null,
	HPnumber VARCHAR(20) not null,
	nameU VARCHAR(20) not null,
	passportNum VARCHAR(20) unique,
	idCardNum VARCHAR(20) unique,

	primary key(idU)
);


CREATE TABLE Staffs (
	idS VARCHAR(20),
	nameS VARCHAR(20) not null,
	password char(6) not null,
	idH VARCHAR(20) not null,

	PRIMARY KEY (idS,idH),
	FOREIGN KEY (idH) REFERENCES Hotels(idH)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE Indents (
	idU VARCHAR(20),
	idO VARCHAR(20),
	idR VARCHAR(20),
	idH VARCHAR(20),
	checkin_time DATE not null,
	checkout_time DATE not null,
	create_time DATE,

	PRIMARY KEY (idO),
	FOREIGN KEY (idR, idH) REFERENCES Rooms(idR, idH),
	Foreign key (idU) references Users(idU)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	);


create table Logs(
	idL VARCHAR(20) unique,
	idH VARCHAR(20),
	StaffsId_log VARCHAR(20) not null,
	orderId_log VARCHAR(20),

	operation_time Date not null,
	operation VARCHAR(100) not null,

	primary key (idL,idH),
	FOREIGN KEY (idH) REFERENCES Hotels(idH)
		ON DELETE CASCADE
		ON UPDATE CASCADE

);

insert into Hotels values ('Marina bay sands', 'marina bay', 'swimming pool', 5, '+65 66888897', '1H');

insert into Rooms values('superior', 1, 2500, 'available', '1R', '1H');
insert into Rooms values('economy', 3, 1000, 'available', '2R','1H');
insert into Rooms values('standard', 2, 1500, 'available', '3R', '1H');

insert into Staffs values('txsing','TianXing','940708','1H'); 


insert into Hotels values ('Homeinns', 'China', 'Meeting Rooms', 3,'+86 33373333', '2H');
insert into Rooms values('superior', 1, 500, 'available', '1R', '2H');
insert into Rooms values('economy', 3, 100, 'available', '2R','2H');
insert into Rooms values('standard', 2, 300, 'available', '3R', '2H');

insert into Staffs values('lywzbs','LiangYe', '123456', '2H');


insert into Hotels values ('Carlton Hotels', '76 Bras Basah Road', 'golf court', 4, '+65 63388833', '3H');

insert into Rooms values('superior', 1, 700, 'available', '1R', '3H');
insert into Rooms values('economy', 3, 300, 'available', '2R','3H');
insert into Rooms values('standard', 2, 500, 'available', '3R', '3H');

insert into Staffs values('kara','LuoXuFang', '940513', '3H');

