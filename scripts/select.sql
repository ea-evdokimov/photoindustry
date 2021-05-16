set search_path = photo;

-- select photograph_nm, model_nm
with pr_x_ph as (select project_desc, model_id, project.photograph_id, photograph.photograph_nm
                 from project
                          inner join photograph on project.photograph_id = photograph.photograph_id)
   , pr_x_ph_x_mo as (select project_desc, photograph_nm, model.model_nm
                      from pr_x_ph
                               inner join model on pr_x_ph.model_id = model.model_id)
select *
from pr_x_ph_x_mo
order by photograph_nm;

-- top 5 cheapest photographs
select photograph_nm, salary
from (select rank() over (order by salary asc) as N, photograph_nm, salary
      from photograph) as rank
where N <= 5;


-- average price of projects with this photograph with asc order
with pr_x_ph as (select photograph.photograph_nm, avg(project.price) as avg_price
                 from project
                          inner join photograph on project.photograph_id = photograph.photograph_id
                 group by photograph_nm)
select *
from pr_x_ph
order by avg_price;

-- percent of using certain stuff
select stuff_desc, round((count(project.stuff_id) * 100.0 / (select count(stuff_id) from project)), 2) as avg_pct
from project
         inner join stuff on project.stuff_id = stuff.stuff_id
group by stuff_desc
order by avg_pct;

-- studios projects with avg price > 30000
with pr_x_st as (select project_desc, project.price, studio_nm
                 from project
                          inner join studio on project.studio_id = studio.studio_id)
select studio_nm, avg(price) as avg_price
from pr_x_st
group by studio_nm
having avg(price) > 30000
order by avg_price;

