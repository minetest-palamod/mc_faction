mc_faction_api = {}

local worldpath = minetest.get_worldpath()

function mc_faction_api.getFactions()
	count = 0

	local factions = {}

	for faction_obj in pairs(mc_faction.DATA) do
		local faction_name = faction_obj[count][name]
		table.insert(factions, faction_name)
		count = count + 1
	end

	return factions
end
