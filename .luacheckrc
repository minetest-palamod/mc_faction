unused_args = false
allow_defined_top = true
max_line_length = 125

globals = {
    "minetest",
    "core",
}

read_globals = {
    string = {fields = {"split"}},
    table = {fields = {"copy", "getn", "shuffle"}},

    -- Builtin
    "vector", "ItemStack",
    "dump", "DIR_DELIM", "VoxelArea", "Settings",

    -- MCL
	--------------------------------------------
	"tt", "doc", "mcl_craftguide", "mcl_wieldview", "mcl_death_drop", "playerphysics", "mcl_hunger", "mcl_spawn", "mcl_player", "mcl_playerinfo", "mcl_playerplus", "mcl_sprint", "mcl_skins", "mcl_moon", "mcl_weather", "lightning", "mcl_minecarts", "mobs_mc", "mcl_burning", "mobs", "mcl_paintings", "mcl_death_messages", "mcl_tmp_message", "awards", "mcl_formspec", "mcl_credits", "mcl_inventory", "mcl_bossbars", "mcl_experience", "hb", "settlements_in_world", "settlements", "mcl_mapgen_core", "tsm_railcorridors", "mcl_dungeons", "mcl_structures", "mcl_wip", "mcl_throwing", "mcl_crafting_table", "mcl_fences", "mcl_farming", "mcl_cocoas", "mesecon", "mcl_observers", "mcl_banners", "mcl_compass", "mcl_doors", "tnt", "xpanes", "mcl_armor", "mcl_beds", "mcl_flowerpots", "mcl_maps", "mcl_bows", "mcl_ocean", "mcl_potions", "mcl_clock", "mcl_core", "mcl_torches", "mcl_mobspawners", "mcl_portals", "mcl_stairs", "mcl_flowers", "screwdriver", "mcl_enchanting", "mcl_walls", "mcl_end", "mcl_buckets", "mcl_fire", "mcl_jukebox", "mcl_dye", "mcl_damage", "mcl_util", "mcl_particles", "mcl_explosions", "mcl_loot", "walkover", "mcl_colors", "flowlib", "mcl_autogroup", "mcl_vars", "biomeinfo", "mcl_sounds", "tga_encoder", "mcl_worlds", "controls"
}
