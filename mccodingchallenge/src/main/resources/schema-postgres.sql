DROP TABLE IF EXISTS addresses;
CREATE TABLE addresses(id serial PRIMARY KEY, country VARCHAR(64), address VARCHAR(255));