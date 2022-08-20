create  database CUSTOMERS;
use CUSTOMERS;
create table CUSTOMERs (
   id int primary key auto_increment,
   name varchar(255),
   age int,
   ADDRESS varchar(255),
   SALARY int
);
create view  CUSTOMERS_view as
    select  name, age
from customers;
SELECT * FROM CUSTOMERS_VIEW;

create view CUSTOMERS_view_address as
    select ADDRESS
from customers;
select * FROM CUSTOMERS_view_address;

create view CUSTOMERS_view_1 as
    select  name, age
from customers
where  age is not null
with check option;
select * FROM CUSTOMERS_view_1;