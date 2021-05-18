-- insertion into model
set search_path = photo;

insert into model(model_id, model_nm, salary)
values (1, 'Гаврилова Полина Ильинична', 20000);
insert into model(model_id, model_nm, salary)
values (2, 'Кононова София Богдановна', 5000);
insert into model(model_id, model_nm, salary)
values (3, 'Исакова Дарья Александровна', 35000);
insert into model(model_id, model_nm, salary)
values (4, 'Крюкова Валерия Захаровна', 17000);
insert into model(model_id, model_nm, salary)
values (5, 'Мельникова Алёна Романовна', 10000);
insert into model(model_id, model_nm, salary)
values (6, 'Титова Алиса Тихоновна', 17000);
insert into model(model_id, model_nm, salary)
values (7, 'Пантелеева Виктория Алексеевна', 3000);
insert into model(model_id, model_nm, salary)
values (8, 'Седова Мария Семёновна', 10000);
insert into model(model_id, model_nm, salary)
values (9, 'Орлов Михаил Николаевич', 21000);
insert into model(model_id, model_nm, salary)
values (10, 'Спиридонова Анна Елисеевна', 5000);
insert into model(model_id, model_nm, salary)
values (11, 'Овсянникова Василиса Ивановна', 30000);

-- into stuff
insert into stuff(stuff_id, stuff_desc, price)
values (1, 'Canon 50D', 3000);
insert into stuff(stuff_id, stuff_desc, price)
values (2, 'Sony x5', 15000);
insert into stuff(stuff_id, stuff_desc, price)
values (3, 'Nikon 3000D', 4000);
insert into stuff(stuff_id, stuff_desc, price)
values (4, 'Canon A1', 6000);
insert into stuff(stuff_id, stuff_desc, price)
values (5, 'DJI Mavic PRO', 7000);
insert into stuff(stuff_id, stuff_desc, price)
values (6, 'Olympos 400', 9500);
insert into stuff(stuff_id, stuff_desc, price)
values (7, 'FudjiFilm 2', 17000);
insert into stuff(stuff_id, stuff_desc, price)
values (8, 'Leica 300', 14000);
insert into stuff(stuff_id, stuff_desc, price)
values (9, 'Instax x39', 600);
insert into stuff(stuff_id, stuff_desc, price)
values (10, 'DJI Mavic air', 12000);


--into photographs
insert into photograph(photograph_id, photograph_nm, salary)
values (1, 'Ермилов Сергей Львович', 10000);
insert into photograph(photograph_id, photograph_nm, salary)
values (2, 'Горбунов Илья Андреевич', 7000);
insert into photograph(photograph_id, photograph_nm, salary)
values (3, 'Лазарев Тимур Артемьевич', 3500);
insert into photograph(photograph_id, photograph_nm, salary)
values (4, 'Чернов Павел Яковлевич', 5000);
insert into photograph(photograph_id, photograph_nm, salary)
values (5, 'Евдокимов Егор Анатольевич', 15000);
insert into photograph(photograph_id, photograph_nm, salary)
values (6, 'Рубцов Артур Михайлович', 100000);
insert into photograph(photograph_id, photograph_nm, salary)
values (7, 'Седова Мария Семёновна', 8000);
insert into photograph(photograph_id, photograph_nm, salary)
values (8, 'Яковлева Мария Марковна', 13500);
insert into photograph(photograph_id, photograph_nm, salary)
values (9, 'Широков Лев Ильич', 50000);
insert into photograph(photograph_id, photograph_nm, salary)
values (10, 'Руднева Екатерина Максимовна', 7900);


--into portfolio
insert into portfolio(portfolio_url, photograph_id)
values ('https://www.example.com/account/book.php?bell=bike&army=bone', 1);
insert into portfolio(portfolio_url, photograph_id)
values ('', 2);
insert into portfolio(portfolio_url, photograph_id)
values ('http://www.example.net/?account=blow', 3);
insert into portfolio(portfolio_url, photograph_id)
values ('http://www.example.com/basin/animal.html', 4);
insert into portfolio(portfolio_url, photograph_id)
values ('http://www.ea-evdokimov.ru/', 5);
insert into portfolio(portfolio_url, photograph_id)
values ('https://ug.ru/', 6);
insert into portfolio(portfolio_url, photograph_id)
values ('https://fromdev.github.io/random-website/ ', 7);
insert into portfolio(portfolio_url, photograph_id)
values ('https://w3schoolsrus.github.io/readyscripts/randomlink.html#gsc.tab=0', 8);
insert into portfolio(portfolio_url, photograph_id)
values ('https://www.ph4.ru/web_random.php', 9);
insert into portfolio(portfolio_url, photograph_id)
values ('https://mvoc.ru/post/198', 10);
-- into client
insert into client(client_id, client_nm)
values (1, 'Lavka');
insert into client(client_id, client_nm)
values (2, 'Nivea');
insert into client(client_id, client_nm)
values (3, 'ИП Волков Владислав Леонидович');
insert into client(client_id, client_nm)
values (4, 'Vichy');
insert into client(client_id, client_nm)
values (5, 'Boomboomroom');
insert into client(client_id, client_nm)
values (6, 'Yandex');
insert into client(client_id, client_nm)
values (7, 'Bulka');
insert into client(client_id, client_nm)
values (8, 'ИП Дубинская Алина');
insert into client(client_id, client_nm)
values (9, 'Google');
insert into client(client_id, client_nm)
values (10, 'Facebook');


-- into scenes
insert into scene(scene_id, scene_type, address_txt, price)
values (1, 'свадьба', 'Долгопрудненское шоссе, 8
, Северный район, Москва', 0);
insert into scene(scene_id, scene_type, address_txt, price)
values (2, 'студия', 'Челобитьевское шоссе, 12 к4, 1 этаж
Северный район, Москва', 5000);
insert into scene(scene_id, scene_type, address_txt, price)
values (3, 'студия', 'Павелецкая Набережная, 2, Москва', 50000);
insert into scene(scene_id, scene_type, address_txt, price)
values (4, 'свадьба', 'Красная площадь, 8, Москва', 0);
insert into scene(scene_id, scene_type, address_txt, price)
values (5, 'интерьер', 'Первомайская улица, 32 к2, Долгопрудный', 0);
insert into scene(scene_id, scene_type, address_txt, price)
values (6, 'свадьба', 'Долгопрудненское шоссе, 10
, Северный район, Москва', 4000);
insert into scene(scene_id, scene_type, address_txt, price)
values (7, 'студия', 'Энтузиастов шоссе, 7 к4, 1 этаж
Северный район, Москва', 13000);
insert into scene(scene_id, scene_type, address_txt, price)
values (8, 'студия', 'Войковская набережная, 7, Москва', 23000);
insert into scene(scene_id, scene_type, address_txt, price)
values (9, 'свадьба', 'Хамовнический вал, 4, Москва', 100000);
insert into scene(scene_id, scene_type, address_txt, price)
values (10, 'интерьер', 'Первомайская улица, 12 к7, Долгопрудный', 100);


-- studio
insert into studio(studio_id, studio_nm, address_txt, price)
values (1, 'Ange Studio', 'Малая Семеновская 3а стр 1
Москва, Восточный округ', 10000);
insert into studio(studio_id, studio_nm, address_txt, price)
values (2, 'FashionStudio', '5-й Монетчиков переулок, дом 3, Москва, Центральный округ', 5000);
insert into studio(studio_id, studio_nm, address_txt, price)
values (3, 'PhotoKiselev studio', 'Ул.2-я Песчаная, 2 корп.4, 15 подъезд, осква, Свеверный округ', 33000);
insert into studio(studio_id, studio_nm, address_txt, price)
values (4, 'urbanprostudio', 'Пресненская набережная, 12
Москва, Центральный округ', 50000);
insert into studio(studio_id, studio_nm, address_txt, price)
values (5, 'Misty', 'Новодмитровская 5а стр 3
Москва, Северо-Восточный округ', 7000);
insert into studio(studio_id, studio_nm, address_txt, price)
values (6, 'Angel Studio', 'Большая Семеновская 3а стр 1
Москва, Восточный округ', 10000);
insert into studio(studio_id, studio_nm, address_txt, price)
values (7, 'FastStudio', '5-й Пулементчиков переулок, дом 10, Москва, Центральный округ', 5000);
insert into studio(studio_id, studio_nm, address_txt, price)
values (8, 'PhotoKotov studio', 'Ул.7-я Песочная, 2 корп.4, 17 подъезд, осква, Свеверный округ', 33000);
insert into studio(studio_id, studio_nm, address_txt, price)
values (9, 'industrialstudio', 'Войквоская набережная, 21
Москва, Центральный округ', 50000);
insert into studio(studio_id, studio_nm, address_txt, price)
values (10, 'Milky', 'Новоивановская 5а стр 3
Москва, Северо-Восточный округ', 7000);


-- projects
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (1, 'Съемка глаза', 4, 3, 2, 1, 5, 1, null, '2001-12-12');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (2, 'Съемка cвадьбы', 1, 1, 3, 1, null, 4, null, '2003-11-01');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (3, 'Съемка архитектуры', 4, 3, 4, 4, null, 1, null, '2005-02-28');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (4, 'Съемка рекламы', 5, 3, 2, 1, 5, 2, null, '2021-12-12');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (5, 'Съемка в инстаграм', 2, 5, 1, 4, 3, 3, null, '2023-04-03');

insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (6, 'Съемка цветов', 9, 3, 2, 4, 7, 9, null, '2002-05-08');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (7, 'Съемка автомобилей', 10, 1, 9, 2, null, 4, null, '2023-11-29');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (8, 'Съемка монет', 8, 3, 7, 5, null, 1, null, '2007-12-31');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (9, 'Съемка рекламы для душа', 5, 7, 2, 4, 9, 2, null, '2001-11-29');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (10, 'Съемка в вк', 9, 9, 1, 6, 8, 6, null, '2028-01-01');

insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (11, 'Съемка шашлыков', 5, 5, 7, 9, null, 4, null, '2007-11-01');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (12, 'Съемка в дворце', 3, 2, 4, 7, 5, 1, null, '2009-09-09');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (13, 'Съемка гонок', 5, 3, 3, 9, 7, 4, null, '2021-12-12');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (14, 'Съемка в facebook', 3, 5, 1, 2, 7, 3, null, '2031-05-03');

insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (15, 'Съемка на воздушном шаре', 9, 3, 8, 5, 8, 4, null, '2007-07-07');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (16, 'Съемка малышей', 4, 2, 3, 7, 5, 4, null, '2013-11-29');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (17, 'Съемка ракеты', 4, 3, 6, 10, 2, 1, null, '2005-11-30');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (18, 'Съемка рекламы для ванны', 1, 2, 2, 3, 9, 8, null, '2003-11-29');
insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id,
                          price, project_dt)
values (19, 'Съемка мордашки', 7, 7, 5, 1, 3, 6, null, '2021-01-01');