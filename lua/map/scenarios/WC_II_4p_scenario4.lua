world_conquest_tek_scenario_res(3, 4, 36)
local generators = {
	wct_map_generator("classic", "4a", 65, 25, 8, 15000, 6, 8, 7),
	wct_map_generator("classic", "4b", 65, 25, 8, 15000, 6, 8, 7),
	wct_map_generator("provinces", "4c", 65, 25, 8, 15000, 6, 8, 7),
	wct_map_generator("podzol", "4d", 65, 25, 8, 15000, 6, 8, 7),
	wct_map_generator("wicked", "4e", 65, 25, 8, 20000, 5, 8, 7),
	wct_map_generator("wild", "4f", 65, 25, 8, 15000, 6, 8, 7),
}

local function get_enemy_data(enemy_power)
	return {
		gold = 350,
		bonus_gold = 150,
		sides = {
			wct_enemy(5, 2, 0, 5, 1, 12, 6, 4),
			wct_enemy(6, 0, 1, 0, 0, (1 + enemy_power), 5, 3),
			wct_enemy(7, 1, 1, 0, 0, (1 + enemy_power), 5, 3),
			wct_enemy(8, 0, 0, 3, 0, (1 + enemy_power), 5, 3),
		}
	}
end
return { generators = generators, get_enemy_data = get_enemy_data, turns = 32, player_gold = 250 }
