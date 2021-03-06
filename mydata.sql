create database mydata;
use mydata;
create table contacts (
contact_id int(11) not null auto_increment,
lastname varchar(40) not null,
firtname varchar(40),
birthday date, 
constraint contact_pk primary key (contact_id)
);

/* create table supplier */
create table supplier (
supplier_id int(11) not null auto_increment,
supplier_name varchar(40) not null,
account_rep varchar(40) not null default 'TBD',
constraint supplier_pk primary key (supplier_id)
);
alter table supplier add unique (supplier_name);

/*delete table*/
drop table contacts;

/* delete 2 table contacts, supplier */
drop table contacts, supplier;

/* edit table, add column email*/
alter table contacts add email varchar(40) ;

/* delete column email in contacts*/
alter table contacts drop email ;

/*create primary key and foregin key*/
create table customers (
id int not null auto_increment primary key,
customer_name varchar(40) not null,
address varchar(255),
email varchar(255)
);

create table orders (
id int not null auto_increment,
staff varchar(40) not null,
customer_id int,
foreign key(customer_id)references customers(id),
constraint orders_pk primary key(id)
);