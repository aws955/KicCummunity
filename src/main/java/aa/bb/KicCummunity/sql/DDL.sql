#한번에 데이터베이스를 설정하기 위해 사용되는 DDL문의 모음입니다.
#개발을 위한 관리자 계정과 사용자 계정을 하나씩 추가합니다.
#어드민 이메일 및 비밀번호 : admin@test.com , 1234
#사용자 이메일 및 비밀번호 : client@test.com , 1234

create database project;

use project;

create table category(
c_num int PRIMARY KEY auto_increment,
c_name varchar(50) not null)charset utf8;

insert into category(c_num,c_name) values (null,'스터디 게시판');
insert into category(c_num,c_name) values (null,'공모전 게시판');
insert into category(c_num,c_name) values (null,'친목 게시판');

create table admin(
a_num int primary key auto_increment,
a_email varchar(40) not null,
a_name varchar(10) not null,
a_phone1 varchar(15) not null,
a_phone2 varchar(15) not null,
a_phone3 varchar(15) not null,
a_password varchar(60) not null)charset utf8;

create table notice(
n_num int primary key auto_increment,
n_title varchar(500) not null,
n_content varchar(10000) not null,
n_ano int(11) not null,
n_sdate datetime not null,
n_views int(11) not null,
foreign key(n_ano) references admin(a_num))charset utf8;

create table member(
m_num int primary key auto_increment,
m_email varchar(40) not null,
m_name varchar(10) not null,
m_password varchar(60) not null,
m_phone1 varchar(15) not null,
m_phone2 varchar(15) not null,
m_phone3 varchar(15) not null,
m_state varchar(5) not null,
m_grade varchar(5) not null,
m_warning varchar(5) not null,
m_regdate datetime not null
)charset utf8;

create table board(
b_num int PRIMARY KEY auto_increment,
b_cno int not null,
b_title varchar(500) not null,
b_content varchar(10000) not null,
b_mno int not null, 
b_ip varchar(20) not null,
b_sdate datetime not null, 
b_udate datetime not null,
b_views int(11) not null,
foreign key(b_cno) references category(c_num),		
foreign key(b_mno) references member(m_num))charset utf8;

create table reply(
r_num int PRIMARY KEY auto_increment,
r_content varchar(500) not null,
r_bno int not null,
r_sdate datetime not null,
r_mno int not null,
r_ip varchar(20) not null,
foreign key(r_bno) references board(b_num), 
foreign key(r_mno) references member(m_num))charset utf8;

insert into admin(a_num,a_email,a_name,a_phone1,a_phone2,a_phone3,a_password) values(null,'admin@test.com','admin','010','1234','5678',password('1234'));
insert into member(m_num,m_email,m_name,m_password,m_phone1,m_phone2,m_phone3,m_state,m_grade,m_warning,m_regdate) values(null,'client@test.com','client',password('1234'),'010','1234','5678',1,1,0,now());
