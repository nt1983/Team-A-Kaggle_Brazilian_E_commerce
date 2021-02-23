-- FUNCTION: public.update_row_modified_function_()

-- DROP FUNCTION public.update_row_modified_function_();

CREATE FUNCTION public.update_row_modified_function_()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
IF TG_OP = 'INSERT' THEN
NEW.create_date = CURRENT_TIMESTAMP(0);
NEW.created_by = CURRENT_USER;
RETURN NEW;
ELSIF TG_OP = 'UPDATE' THEN
NEW
END IF;.changed_date = CURRENT_TIMESTAMP(0);
NEW.changed_by = CURRENT_USER;
RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.update_row_modified_function_()
    OWNER TO postgres;
