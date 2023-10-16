DO $$ BEGIN
    CREATE TYPE SERVER AS ENUM('main', 'beta');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

CREATE TABLE IF NOT EXISTS keys(vrp_id INT, server SERVER, private TEXT, public TEXT, PRIMARY KEY(vrp_id, server));
CREATE TABLE IF NOT EXISTS snowflake2user(vrp_id INT PRIMARY KEY, snowflake BIGINT NOT NULL);
CREATE TABLE IF NOT EXISTS wealth(vrp_id INT, server SERVER, wallet BIGINT, bank BIGINT, loan BIGINT, PRIMARY KEY(vrp_id, server));
CREATE TABLE IF NOT EXISTS item_info(item_id TEXT PRIMARY KEY, description TEXT, name TEXT, weight FLOAT);
CREATE TABLE IF NOT EXISTS aliases(vrp_id INT NOT NULL, server SERVER NOT NULL, name TEXT NOT NUll, last_seen TIMESTAMPTZ)