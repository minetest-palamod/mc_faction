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
	hash INTEGER,
    faction TEXT,
	creator TEXT,
);
]])

--Only this file should have access to database

function mc_faction.claim.claim(hash, faction, playername)
    sql_exec(
        ("INSERT INTO claims VALUES (%i, %s, %s);")
        :format(hash, faction, playername)
    )
end

function mc_faction.claim.unclaim(hash)
    sql_exec(
        ("DELETE FROM claims WHERE hash = %i LIMIT 1;"):format(hash)
    )
end

function mc_faction.claim.get_claim(hash)
    return sql_row("SELECT faction, creator FROM claims WHERE hash = "..hash)
end