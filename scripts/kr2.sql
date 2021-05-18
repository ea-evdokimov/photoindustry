CREATE SCHEMA demo_db;

SET SEARCH_PATH = demo_db;

-- Создание таблиц

-- Создаем таблицы для продуктов онлайн школы
DROP TABLE IF EXISTS product_types CASCADE;
CREATE TABLE product_types
(
    id        serial PRIMARY KEY,
    type_name VARCHAR(100)
);

DROP TABLE IF EXISTS customers CASCADE;
CREATE TABLE customers
(
    id    serial PRIMARY KEY,
    name  VARCHAR(100),
    email VARCHAR(30)
);

DROP TABLE IF EXISTS products CASCADE;
CREATE TABLE products
(
    id      serial PRIMARY KEY,
    name    VARCHAR(100),
    type_id INT REFERENCES product_types (id),
    price   INT
);

DROP TABLE IF EXISTS orders CASCADE;
CREATE TABLE orders
(
    id          serial PRIMARY KEY,
    order_date  DATE,
    customer_id INT REFERENCES customers (id)
);

DROP TABLE IF EXISTS sales;
CREATE TABLE sales
(
    product_id INT REFERENCES products (id),
    order_id   INT REFERENCES orders (id),
    quantity   INT,
    PRIMARY KEY (product_id, order_id)
);


-- Заполняем таблицу product_types
INSERT INTO product_types(id, type_name)
VALUES (1, 'Онлайн-курс');
INSERT INTO product_types(id, type_name)
VALUES (2, 'Вебинар');
INSERT INTO product_types(id, type_name)
VALUES (3, 'Книга');
INSERT INTO product_types(id, type_name)
VALUES (4, 'Консультация');


-- Заполняем таблицу products
INSERT INTO products(id, name, type_id, price)
VALUES (1, 'Основы искусственного интеллекта', 1, 15000);
INSERT INTO products(id, name, type_id, price)
VALUES (2, 'Технологии обработки больших данных', 1, 50000);
INSERT INTO products(id, name, type_id, price)
VALUES (3, 'Программирование глубоких нейронных сетей', 1, 30000);
INSERT INTO products(id, name, type_id, price)
VALUES (4, 'Нейронные сети для анализа текстов', 1, 50000);
INSERT INTO products(id, name, type_id, price)
VALUES (5, 'Нейронные сети для анализа изображений', 1, 50000);
INSERT INTO products(id, name, type_id, price)
VALUES (6, 'Инженерия искусственного интеллекта', 1, 60000);
INSERT INTO products(id, name, type_id, price)
VALUES (7, 'Как стать DataScientist''ом', 2, 0);
INSERT INTO products(id, name, type_id, price)
VALUES (8, 'Планирование карьеры в DataScience', 2, 2000);
INSERT INTO products(id, name, type_id, price)
VALUES (9, 'Области применения нейросетей: в какой развивать экспертность', 2, 4000);
INSERT INTO products(id, name, type_id, price)
VALUES (10, 'Программирование глубоких нейронных сетей на Python', 3, 1000);
INSERT INTO products(id, name, type_id, price)
VALUES (11, 'Математика для DataScience', 3, 2000);
INSERT INTO products(id, name, type_id, price)
VALUES (12, 'Основы визуализации данных', 3, 500);

-- Заполняем таблицу customers
INSERT INTO customers(id, name, email)
VALUES (1, 'Иван Петров', 'petrov@mail.ru');
INSERT INTO customers(id, name, email)
VALUES (2, 'Петр Иванов', 'ivanov@gmail.com');
INSERT INTO customers(id, name, email)
VALUES (3, 'Тимофей Сергеев', 'ts@gmail.com');
INSERT INTO customers(id, name, email)
VALUES (4, 'Даша Корнеева', 'dasha.korneeva@mail.ru');
INSERT INTO customers(id, name, email)
VALUES (5, 'Иван Иван', 'petrov@mail.ru');
INSERT INTO customers(id, name, email)
VALUES (6, 'Сергей Щербаков', 'user156@yandex.ru');
INSERT INTO customers(id, name, email)
VALUES (7, 'Катя Самарина', 'kate@mail.ru');
INSERT INTO customers(id, name, email)
VALUES (8, 'Андрей Котов', 'a.kotoff@yandex.ru');

-- Заполняем таблицу orders
INSERT INTO orders(id, order_date, customer_id)
VALUES (1, '2021-01-11', 1);
INSERT INTO orders(id, order_date, customer_id)
VALUES (2, '2021-01-15', 3);
INSERT INTO orders(id, order_date, customer_id)
VALUES (3, '2021-01-20', 4);
INSERT INTO orders(id, order_date, customer_id)
VALUES (4, '2021-01-12', 2);
INSERT INTO orders(id, order_date, customer_id)
VALUES (5, '2021-01-25', 8);
INSERT INTO orders(id, order_date, customer_id)
VALUES (6, '2021-01-30', 1);


-- Заполняем таблицу sales
INSERT INTO sales(product_id, order_id, quantity)
VALUES (3, 1, 1);
INSERT INTO sales(product_id, order_id, quantity)
VALUES (4, 6, 1);
INSERT INTO sales(product_id, order_id, quantity)
VALUES (10, 2, 3);
INSERT INTO sales(product_id, order_id, quantity)
VALUES (11, 2, 3);
INSERT INTO sales(product_id, order_id, quantity)
VALUES (3, 3, 1);
INSERT INTO sales(product_id, order_id, quantity)
VALUES (4, 3, 1);
INSERT INTO sales(product_id, order_id, quantity)
VALUES (5, 3, 1);
INSERT INTO sales(product_id, order_id, quantity)
VALUES (1, 4, 1);
INSERT INTO sales(product_id, order_id, quantity)
VALUES (6, 5, 1);
INSERT INTO sales(product_id, order_id, quantity)
VALUES (7, 5, 1);


---------- 1 ----------

select products.id,
       name,
       case
           when sum(quantity) is null then 0
           else 1.0 * sum(quantity) / (select sum(quantity) from sales) end as frequency
from products
         left join sales on products.id = sales.product_id
-- если под курсами подразумевается только онлайн курсы
-- left join product_types on products.type_id = product_types.id
-- where type_name = 'Онлайн-курс'
group by products.id
order by frequency asc;

---------- 2 ----------
with best as
         (select c.id,
                 c.name                                                 as name,
                 p.name                                                 as pr_name,
                 p.price,
                 dense_rank() over (partition by c.id order by p.price) as rank
          from customers c
                   left join orders o on c.id = o.customer_id
                   left join sales s on o.id = s.order_id
                   left join products p on s.product_id = p.id)
select id, name, pr_name, price
from best
-- в зависимости от того, выводить ли покупателей, которые еще ничего не купили
where rank = 1
  and pr_name is not null

---------- 3 ----------
with best as (select *
              from sales
                       left join orders on sales.order_id = orders.id
                       left join products on sales.product_id = products.id
              order by order_date)
-- select * from best
select order_date, name, sum(quantity * price) over (partition by order_date order by product_id)
from best;

---------- 4 ----------

with best as (select *
              from sales
                       left join orders on sales.order_id = orders.id
                       left join products on sales.product_id = products.id
              order by order_date),
     best_best as (select order_date, sum(quantity * price) over (partition by order_date) as cum_sum
                   from best),
     best_best_best as (select order_date, sum(cum_sum) as all_sum
                        from best_best
                        group by order_date)

select order_date,
       all_sum,
       all_sum - lag(all_sum::integer, 1, 0) over (order by order_date)                     as dif,
       (all_sum - lag(all_sum::integer, 1, 0) over (order by order_date)) / all_sum * 100.0 as dif_percent
-- тут нужно учесть что есть отрицательными числами, поэтому -225 процентов
from best_best_best;

---------- 5 ----------
-- mask_name
CREATE OR REPLACE FUNCTION mask_name(text) RETURNS text
    LANGUAGE SQL AS
$$
SELECT overlay($1 placing repeat('#', position(' ' in $1) - 3) from 2 for position(' ' in $1) - 2)
$$;

CREATE OR REPLACE FUNCTION mask_email(text) RETURNS text
    LANGUAGE SQL AS
$$
SELECT overlay($1 placing repeat('#', length($1) - 2) from 2 for length($1) - 2)
$$;

create or replace view client_info as
select customers.id, mask_name(customers.name), mask_email(customers.email), p.name
from customers
         left join orders o on customers.id = o.customer_id
         left join sales s on o.id = s.order_id
         left join products p on s.product_id = p.id
where p.name is not null;

select * from client_info

---------- 7 ----------
