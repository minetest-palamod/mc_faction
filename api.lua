mc_faction_api = {}

local worldpath = minetest.get_worldpath()

function mc_faction_api.getFactions()
	count = 0

	local factions = {}

	for faction_obj in pairs(DATA) do
		local faction_name = faction_obj[count][name]
		table.insert(factions, faction_name)
		count = count + 1
	end

	return factions
end

function mc_faction_api.getFactionMembers(faction)
	local conf = parser.Parse(faction .. ".fact")

	return conf["members"]
end
