-- FUNCTION: public.update_row_modified_function_()

-- DROP FUNCTION public.update_row_modified_function_();

CREATE FUNCTION public.update_row_modified_function_()
    RETURNS trigger
	--Language the function is being written
    LANGUAGE 'plpgsql'
	
	--Cost: is the cost per row of the result, which is used by the query planner to find the cheapest plan.
	--the default value is 100
    COST 100
	
	--VOLATILE function can do anything, including modifying the database. 
	    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN

--Data type text; a string of INSERT, UPDATE, DELETE, or TRUNCATE telling for which operation the trigger was fired.
IF TG_OP = 'INSERT' THEN

-- New= the row, create_date is the name of the column in the table in this line we are appenging the current_timestamp
NEW.create_date = CURRENT_TIMESTAMP(0);
-- New= the row, create_date is the name of the column in the table in this line we are appenging the current_user
NEW.created_by = CURRENT_USER;

--return the result to the table
RETURN NEW;
ELSIF TG_OP = 'UPDATE' THEN
NEW.changed_date = CURRENT_TIMESTAMP(0);
NEW.changed_by = CURRENT_USER;


RETURN NEW;
END IF;
END;
$BODY$;

ALTER FUNCTION public.update_row_modified_function_()
    OWNER TO postgres;
