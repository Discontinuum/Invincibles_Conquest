world_conquest_tek_scenario_res(1, 6, 56)
local generators = {
	wct_map_generator("classic", "6a", 66, 14, 10, 16320, 8, 7, 7),
	wct_map_generator("maritime", "6b", 66, 14, 10, 16320, 8, 7, 7),
	wct_map_generator("industrial", "6c", 66, 14, 10, 18360, 7, 7, 7),
	wct_map_generator("feudal", "6d", 66, 14, 10, 16320, 8, 7, 7),
}

local function get_enemy_data(enemy_power)
	return {
		gold = 450,
		bonus_gold = 175,
		sides = {
			wct_enemy(5, 3, 9, 2, 0, 14, "$($ic2_difficulty.enemy_power-4)", "$($ic2_difficulty.enemy_power-5)"),
			wct_enemy(6, 2, 8, 0, 0, "$($ic2_difficulty.enemy_power*2-4)", "$($ic2_difficulty.enemy_power-3)", "$($ic2_difficulty.enemy_power-4)"),
			wct_enemy(7, 3, 1, 7, 0, "$($ic2_difficulty.enemy_power*2-5)", "$($ic2_difficulty.enemy_power-3)", "$($ic2_difficulty.enemy_power-4)"),
			wct_enemy(8, 2, 1, 0, 0, "$($ic2_difficulty.enemy_power*2-5)", "$($ic2_difficulty.enemy_power-3)", "$($ic2_difficulty.enemy_power-4)"),
			wct_enemy(9, 2, 0, 2, 1, "$($ic2_difficulty.enemy_power*2-5)", 7, 6),
			wct_enemy(10, 2, 1, 4, 1, 13, "$($ic2_difficulty.enemy_power-3)", "$($ic2_difficulty.enemy_power-5)"),
		}
	}
end
return { generators = generators, get_enemy_data = get_enemy_data, turns = 56, player_gold = 450 }
