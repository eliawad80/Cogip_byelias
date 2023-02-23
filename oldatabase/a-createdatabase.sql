-- Check if database 'cogip' exists
IF EXISTS (SELECT * FROM information_schema.schemata WHERE schema_name = 'cogip') THEN
    -- Check if database 'cogip' is empty
    IF (SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'cogip') = 0 THEN
        -- Restore database 'cogip' from file 'cogip.sql' in INIT folder
        SOURCE  /docker-entrypoint-initdb.d/cogip.sql;
    END IF;
END IF;
