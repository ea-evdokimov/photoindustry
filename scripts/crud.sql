set search_path = photo;

-- create operations
insert into photograph(photograph_id, photograph_nm, salary)
values (22, 'Беляев Марк Глебович', 11000);

insert into project(project_id, project_desc, studio_id, photograph_id, client_id, scene_id, model_id, stuff_id, price, project_dt)
values (21, 'НЮ фотография', 1, 2, 3, 3, 5, 1, default, '1200-12-12');

-- read operations
select avg(price)
from studio;

select photograph_nm, salary
from photograph
where salary = (select min(salary) from photograph);

-- update operations
update model
set model_nm= 'Мельникова Алина Романовна'
where model_id = 5;

update photograph
set salary = 13000
where photograph_id=2;

-- delete operations
delete from model
where model_id = 6;

delete from portfolio
where photograph_id = 9;

