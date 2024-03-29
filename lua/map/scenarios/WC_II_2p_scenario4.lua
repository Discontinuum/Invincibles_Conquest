world_conquest_tek_scenario_res(2, 4, 40)
local generators = {
	wct_map_generator("classic", "4a", 56, 19, 8, 11960, 6, 6, 7),
	wct_map_generator("classic", "4b", 56, 19, 8, 11960, 6, 6, 7),
	wct_map_generator("provinces", "4c", 56, 19, 8, 11960, 6, 6, 7),
	wct_map_generator("podzol", "4d", 56, 19, 8, 11960, 6, 6, 7),
	wct_map_generator("wicked", "4e", 56, 19, 8, 16744, 5, 6, 7),
	wct_map_generator("wild", "4f", 56, 19, 8, 11960, 6, 6, 7),
}

local function get_enemy_data(enemy_power)
	return {
		gold = 350,
		bonus_gold = 150,
		sides = {
			wct_enemy(5, 2, 0, 5, 1, 8, 3, 2),
			wct_enemy(6, 0, 1, 0, 0, "$($ic2_difficulty.enemy_power-2)", 2, 1),
			wct_enemy(7, 1, 1, 0, 0, "$($ic2_difficulty.enemy_power-1)", 2, 1),
			wct_enemy(8, 0, 0, 3, 0, "$($ic2_difficulty.enemy_power-2)", 3, 1),
		}
	}
end
return { generators = generators, get_enemy_data = get_enemy_data, turns = 40, player_gold = 300 }
