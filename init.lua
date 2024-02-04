local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

if modpath then modpath = modpath .. "/" end

mc_faction = {}

local launch_array = {"util.lua", "parser.lua"}

for item in ipairs(launch_array) do
	dofile(modpath .. item)
end
