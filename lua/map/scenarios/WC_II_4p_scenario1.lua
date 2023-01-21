world_conquest_tek_scenario_res(3, 1, 24)
local generators = {
	wct_map_generator("classic", "1a", 40, 22, 5, 9000, 3, 5, 2),
}

local function get_enemy_data(enemy_power)
	return {
		gold = 300,
		bonus_gold = 150,
		sides = {
			wct_enemy(5, 1, 0, 0, 0, 4, 0, 0),
		}
	}
end
return { generators = generators, get_enemy_data = get_enemy_data, turns = 23, player_gold = 100 }
