minetest.register_on_punchplayer(function(player, hitter, _, _, _, damage)
	local factions = mc_faction.api.getFactions()
	for faction in pairs(factions) do
		if mc_faction.api.isInFaction(player:get_player_name(), faction)
			and mc_faction.api.isInFaction(hitter:get_player_name(), faction) then
			-- Just to be sure set HP of player & hitter to full
			--player:set_hp(20)
			--hitter:set_hp(20)
			return false
		end
	end
end)
