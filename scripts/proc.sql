set search_path = photo;
-- procedure for counting sum price for the project
CREATE PROCEDURE count_project_price()
    LANGUAGE SQL
AS
$$
update project
set price = (select price from scene where project.scene_id = scene.scene_id) +
            (select price from studio where project.studio_id = studio.studio_id) +
            (select salary from photograph where project.photograph_id = photograph.photograph_id) +
            cast(
                    case
                        when (select salary from model where project.model_id = model.model_id) is null then 0
                        else (select salary from model where project.model_id = model.model_id)
                        end
                as numeric(10, 1)
                ) +
            (select price from stuff where project.stuff_id = stuff.stuff_id)

where price is null;
$$;

CALL count_project_price();
