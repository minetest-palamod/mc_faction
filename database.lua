local worldpath = minetest.get_worldpath()

local ie = minetest.request_insecure_environment()
if not ie then
	error("Cannot access insecure environment!")
end

local sql = ie.require("lsqlite3")
-- Remove public table
if sqlite3 then
	sqlite3 = nil
end

local db = sql.open(worldpath .. "/mc_faction.sqlite3")

local function sql_exec(q)
	if db:exec(q) ~= sql.OK then
		minetest.log("info", "[mc_faction] lSQLite: " .. db:errmsg())
	end
end

local function sql_row(q)
	q = q .. " LIMIT 1;"
	for row in db:nrows(q) do
		return row
	end
end

sql_exec([[
CREATE TABLE IF NOT EXISTS claims (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	hash INTEGER,
    faction TEXT,
	creator TEXT,
);
]])