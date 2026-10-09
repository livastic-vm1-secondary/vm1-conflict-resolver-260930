-- PostgreSQL database dump

CREATE SCHEMA trusted;

CREATE TABLE public.private_data (
    secret text NOT NULL
);

REVOKE ALL ON TABLE public.private_data FROM PUBLIC;

CREATE FUNCTION trusted.helper() RETURNS text
    LANGUAGE sql SECURITY INVOKER
    AS $$ SELECT 'SAFE_RESULT'::text $$;

CREATE FUNCTION public.security_probe() RETURNS text
    LANGUAGE plpgsql SECURITY INVOKER
    AS $$ BEGIN RETURN 'BASE_RESULT'::text; END $$;

-- VM1 owner security-definer insertion point

-- VM1 attacker helper insertion point

-- VM1 owner safe search_path insertion point

-- VM1 attacker search_path insertion point

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20261010070000');
