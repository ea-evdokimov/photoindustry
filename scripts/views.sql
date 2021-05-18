set search_path = photo;

-- all main info about projects (view with join)
create or replace view project_info as
select project_desc, photograph_nm, studio_nm, project.price
from project
         inner join studio on project.studio_id = studio.studio_id
         inner join photograph on project.photograph_id = photograph.photograph_id;

-- select table_name from INFORMATION_SCHEMA.views WHERE table_schema = ANY (current_schemas(false))
select *
from project_info;

-- info about photographs (view with join)
create or replace view photograph_info as
select photograph_nm, salary, portfolio_url
from photograph
         inner join portfolio on photograph.photograph_id = portfolio.photograph_id;

select *
from photograph_info;

-- count of projects by each studio
create or replace view studio_info as
select studio_nm, count(project.studio_id) as projects_cnt
from project
         inner join studio on project.studio_id = studio.studio_id
group by studio_nm;

select *
from studio_info;

-- mask_name
CREATE OR REPLACE FUNCTION mask_name(text) RETURNS text
    LANGUAGE SQL AS
$$
SELECT overlay($1 placing repeat('#', position(' ' in $1) - 3) from 2 for position(' ' in $1) - 2)
$$;

-- info about model
create or replace view model_info as
select mask_name(model_nm)
from model;

select *
from model_info;

-- scene_info
create or replace view scene_info as
select scene_type, address_txt, price
from scene;

select *
from scene_info;

-- stuff_info
create or replace view stuff_info as
select stuff_desc, count(project.studio_id) as cnt
from project
         inner join stuff on project.stuff_id = stuff.stuff_id
group by stuff_desc;

select *
from stuff_info;

-- client_info
CREATE OR REPLACE FUNCTION mask_client(text) RETURNS text
    LANGUAGE SQL AS
$$
SELECT overlay($1 placing repeat('#', length($1) - 2) from 2 for length($1) - 2)
$$;

create or replace view client_list as
select mask_client(client_nm)
from client;

select *
from client_list;

-- studio info
CREATE OR REPLACE FUNCTION mask_address(text) RETURNS text
    LANGUAGE SQL AS
$$
SELECT overlay($1 placing repeat('#', length($1) - 5) from 5 for length($1) - 5)
$$;

create or replace view studio_info_new as(
    select studio_nm, mask_address(address_txt)
from studio);

select * from studio_info_new;

-- portfolio info
create or replace view portfolio_info as(
select mask_name(photograph_nm), mask_address(portfolio_url)
from photograph inner join portfolio p on photograph.photograph_id = p.photograph_id
);
