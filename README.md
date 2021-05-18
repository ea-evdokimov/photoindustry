# PHOTOINDUSTRY
Final project in course of Data Bases

Была выбрана сфера фотоиндустрии и продемонстрирована схема базы для нее. 

**Концептуальная модель:**

![alt text](https://github.com/ea-evdokimov/photoindustry/blob/master/pics/model_1.png?raw=true)

**Логическая модель:**
![alt text](https://github.com/ea-evdokimov/photoindustry/blob/master/pics/model_2.png?raw=true)


Так как в процесе проектирования было замечена излишность в связях, была добавлена сущность ORDER для связи клиента с фотостудией, которая занимается проектом. Таким образом избавились от стрелки(отношшения) многие ко многим. 

**Физическая модель** вместе с предыдущими двумя находятся [тут](https://github.com/ea-evdokimov/photoindustry/blob/master/pics/full_desc.pdf)

*Выполнено:*

1. cоздание таблиц согласно физической модели.
[init.sql](https://github.com/ea-evdokimov/photoindustry/blob/master/script/init.sql)
2. добавление туда реалистичных данных.
[insert.sql](https://github.com/ea-evdokimov/photoindustry/blob/master/script/insert.sql)
3. написано по 2 примера на каждую CRUD-операцию.
[crud.sql](https://github.com/ea-evdokimov/photoindustry/blob/master/script/crud.sql)
4. написано 5 запросов SELECT со смысом.
[select.sql](https://github.com/ea-evdokimov/photoindustry/blob/master/script/select.sql)
5. написана процедура, подсчитывающая суммарную стоимость фотопроекта, согласно информации из других таблиц.
[proc.sql](https://github.com/ea-evdokimov/photoindustry/blob/master/script/proc.sql)
6. добавлено несколько представлений, в том числе с сокрытием данных.
[view.sql](https://github.com/ea-evdokimov/photoindustry/blob/master/script/view.sql)
7. написаны триггеры [trigger.sql](https://github.com/ea-evdokimov/photoindustry/blob/master/script/trigger.sql) 
 - на добавлении заказа компании к студии (в ORDER) при добвалении фотопроекта
 - на изменение стоимости аренды фотостудии и, соответствующее изменение в цене проекта



Лучше всего запускать в порядке init -> trigger -> insert -> proc -> crud -> select -> view
