-- Write your sql commands to create your db schema here.
-- It should create a table in a new table in the db/ directory.

DB = {:conn => SQLite3::Database.new("db/pokemon.db")}