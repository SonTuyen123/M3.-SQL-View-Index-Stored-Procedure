
create database demo12;
create table Products (
                       id int primary key auto_increment,
                       productCode varchar(255),
                       productName varchar(255),
                       productPrice int,
                       productAmount int,
                       productDescription varchar(255),
                       productStatus varchar(255)
);
use demo12;
insert into products (productCode, productName, productPrice, productAmount, productDescription ,productStatus)
values ('233','Product1',12,90,'đã bán','hoàn thành');
insert into products (productCode, productName, productPrice, productAmount, productDescription ,productStatus)
values ('12','Product2',13,90,'đã bán','chưa bán');
insert into products (productCode, productName, productPrice, productAmount, productDescription ,productStatus)
values ('13','Product3',14,90,'đã bán','1');
insert into products (productCode, productName, productPrice, productAmount, productDescription ,productStatus)
values ('14','Product4',15,90,'đã bán','2');
insert into products (productCode, productName, productPrice, productAmount, productDescription ,productStatus)
values ('15','Product5',16,90,'đã bán','2');
# Tạo Unique Index trên bảng Products
# (sử dụng cột productCode để tạo chỉ mục)
alter table Products add unique  idx_productCode(productCode);
EXPLAIN SELECT * FROM Products WHERE productCode = 13;
SELECT * FROM Products WHERE productCode = 13;
# Tạo Composite Index trên bảng Products
# (sử dụng 2 cột productName và productPrice)
alter table Products add unique  idx_productCodeandProductName(productCode, productName);


# Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW Products_views AS

SELECT productCode, productName, productPrice

FROM  Products;
select * from Products_views;


# Tiến hành sửa đổi view
CREATE OR REPLACE VIEW Products_views AS

SELECT productCode, productName, productPrice

FROM Products
where productName = 'products1'

DROP VIEW Products_views;