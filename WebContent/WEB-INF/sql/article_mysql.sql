show tables;

create database chap17; 

create table id_sequence (
	sequence_name varchar (10) not null,
	next_value int not null,
	primary key (sequence_name)
) default character set = euckr;

insert into id_sequence values('article', 0);

create table article (
	article_id int not null auto_increment,
	group_id int not null,
	sequence_no char(16) not null,
	posting_date datetime not null,
	read_count int not null,
	writer_name varchar(20) not null,
	password varchar(10),
	title varchar(100),
	content text,
	primary key (article_id),
	index (sequence_no)
) default character set = euckr;
select * from id_sequence;
<!-- 테이블 변경-->
alter table article convert to character set euckr; 

grant select, insert, update, delete, create, drop on chap17.* to 'jspexam'@'localhost' identified by 'jspex';

grant select, insert, update, delete, create, drop on chap17.* to 'jspexam'@'%' identified by 'jspex';

