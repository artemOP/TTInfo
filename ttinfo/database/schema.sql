DO $$ BEGIN
    CREATE TYPE SERVER AS ENUM('main', 'legacy', 'beta');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

DO $$ BEGIN
    CREATE TYPE COORDS AS (x FLOAT, y FLOAT, z FLOAT, h FLOAT);
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

CREATE TABLE IF NOT EXISTS keys(vrp_id INT, server SERVER, private TEXT, public TEXT, PRIMARY KEY(vrp_id, server));
CREATE TABLE IF NOT EXISTS donations(vrp_id INT, server SERVER, quantity INT, amount_used INT DEFAULT 0, reccuring BOOLEAN DEFAULT FALSE, PRIMARY KEY(vrp_id, server));
CREATE TABLE IF NOT EXISTS snowflake2user(vrp_id INT PRIMARY KEY, snowflake BIGINT NOT NULL);
CREATE TABLE IF NOT EXISTS wealth(vrp_id INT, server SERVER, wallet BIGINT, bank BIGINT, loan BIGINT, PRIMARY KEY(vrp_id, server));
CREATE TABLE IF NOT EXISTS item_info(item_id TEXT PRIMARY KEY, description TEXT, name TEXT, weight FLOAT);
CREATE TABLE IF NOT EXISTS aliases(vrp_id INT NOT NULL, name TEXT NOT NUll, last_seen TIMESTAMPTZ, PRIMARY KEY(vrp_id, name));
CREATE TABLE IF NOT EXISTS playtime(vrp_id INT, server SERVER, playtime INTERVAL, job TEXT, date_seen DATE, PRIMARY KEY(vrp_id, server, job, date_seen));
CREATE TABLE IF NOT EXISTS positions(vrp_id INT NOT NUll, server SERVER, position COORDS NOT NULL);
CREATE TABLE IF NOT EXISTS avatars(vrp_id INT PRIMARY KEY, url TEXT);
CREATE TABLE IF NOT EXISTS sotd(date DATE PRIMARY KEY, aptitude TEXT, bonus INT);