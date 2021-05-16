set search_path = photo;
-- trigger for recounting all price of the project
CREATE OR REPLACE FUNCTION count_price() returns trigger as
$$
begin
    update project
    set price = (select price from scene where project.scene_id = scene.scene_id) +
                new.price +
                (select salary from photograph where project.photograph_id = photograph.photograph_id) +
                cast(
                        case
                            when (select salary from model where project.model_id = model.model_id) is null then 0
                            else (select salary from model where project.model_id = model.model_id)
                            end
                    as numeric(10, 1)
                    ) +
                (select price from stuff where project.stuff_id = stuff.stuff_id)

    where studio_id = new.studio_id;
    return new;
end;
$$ language plpgsql;


create trigger trigger_update
    after update of price
    on studio
    for each row
execute function count_price();


update studio
set price = 3000
where studio_id=2;

-- trigger for deleting a photograph

CREATE OR REPLACE FUNCTION change_id() returns trigger as
$$
begin
    update portfolio
    set portfolio_url = concat(portfolio_url, '|id changed')
    where photograph_id = new.photograph_id;
    return new;
end;
$$ language plpgsql;

create trigger trigger_change_id
    after update of photograph_id
    on photograph
    for each row
execute function change_id();

update photograph
set photograph_id= 5
where photograph_id = 7;
