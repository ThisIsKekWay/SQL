-- create database homework2;
use homework2;
/* 
create table sales (
	id int auto_increment primary key,
    order_date date,
    count_product int
); 
*/

/*
insert into movies (order_date, count_product) values 
("2022-01-01", 156),
("2022-01-02", 180),
("2022-01-03", 21),
("2022-01-04", 124),
("2022-01-05", 341);
*/

/* 
select
	id AS "id заказа",
    if (count_product < 100, "Маленький заказ",
      if (count_product between 100 and 300, "Средний заказ",
        if (count_product > 300, "Большой заказ", "Не определено")
	  )
	) as "Тип заказа"
from sales; 
*/

/* 
create table orders (
	id int auto_increment primary key,
    emploee_id varchar(10),
    amount real,
    order_status varchar(50)
);
*/

/* insert into orders (emploee_id, amount, order_status) values
("e03", 15.00, "OPEN"),
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"),
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANSELED"); */

select 
	id as "№",
	emploee_id as "ID работника",
    amount as "Объем продаж",
    case
		when order_status = "OPEN" then "Order is in open state"
        when order_status = "CLOSED" then "Order is closed"
        when order_status = "CANSELED" then "Order is cancelled"
		else "Нет данных"
	end as "full_order_status"
from orders;
