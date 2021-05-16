# photoindustry
Final project in course of Data Bases

Была выбрана сфера фотоиндустрии и продемонстрирована схема базы для нее. 

Концептуальная модель:
![alt text](https://github.com/ea-evdokimov/photoindustry/blob/master/pics/model_1.png?raw=true)
Логическая модель:
![alt text](https://github.com/ea-evdokimov/photoindustry/blob/master/pics/model_2.png?raw=true)
Физическая модель:
находится по [ссылке](https://github.com/ea-evdokimov/photoindustry/blob/master/pics/desc.pdf)

Выполнено создание таблиц согласно физической модели.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/init.sql)
Добавление туда реалистичных данных.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/insert.sql)
Написано по 2 примера на каждую CRUD-операцию.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/crud.sql)
Написано 5 запросов SELECT со смысом.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/select.sql)
Написана процедура, подсчитывающая суммарную стоимость фотопроекта, согласно информации из других таблиц.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/proc.sql)
Добавлено несколько представлений, в том числе с сокрытием данных.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/view.sql)
Написан триггер на изменение стоимости аренды фотостудии и, соответствующее изменение в цене проекта.
Написан триггер на удаление фотографа и приписывание к описанию его портфолио deleted.
[link](https://github.com/ea-evdokimov/photoindustry/blob/master/script/trigger.sql)
