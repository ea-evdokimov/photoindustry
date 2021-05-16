# PHOTOINDUSTRY
Final project in course of Data Bases

Была выбрана сфера фотоиндустрии и продемонстрирована схема базы для нее. 

Концептуальная модель:
![alt text](https://github.com/ea-evdokimov/photoindustry/blob/master/pics/model_1.png?raw=true)
Логическая модель:
![alt text](https://github.com/ea-evdokimov/photoindustry/blob/master/pics/model_2.png?raw=true)
Физическая модель:
находится по [ссылке](https://github.com/ea-evdokimov/photoindustry/blob/master/pics/desc.pdf)

Выполнено:
1. cоздание таблиц согласно физической модели.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/init.sql)
2. добавление туда реалистичных данных.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/insert.sql)
3. написано по 2 примера на каждую CRUD-операцию.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/crud.sql)
4. написано 5 запросов SELECT со смысом.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/select.sql)
6. написана процедура, подсчитывающая суммарную стоимость фотопроекта, согласно информации из других таблиц.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/proc.sql)
7. добавлено несколько представлений, в том числе с сокрытием данных.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/view.sql)
8.написаны триггеры 
 - на добавлении заказа компании к студии (в APPLICATION) пр добвалении фотопроекта
 - на изменение стоимости аренды фотостудии и, соответствующее изменение в цене проекта
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/trigger.sql)
