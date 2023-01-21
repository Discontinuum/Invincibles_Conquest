world_conquest_tek_scenario_res(3, 6, 44)
local generators = {
	wct_map_generator("classic", "6a", 80, 27, 10, 17400, 8, 10, 7),
	wct_map_generator("maritime", "6b", 80, 27, 10, 17400, 8, 10, 7),
	wct_map_generator("industrial", "6c", 80, 27, 10, 19525, 7, 10, 7),
	wct_map_generator("feudal", "6d", 80, 27, 10, 17400, 8, 10, 7),
}

local function get_enemy_data(enemy_power)
	return {
		gold = 450,
		bonus_gold = 175,
		sides = {
			wct_enemy(5, 3, 9, 2, 0, 25, (2+enemy_power), (1 + enemy_power)),
			wct_enemy(6, 2, 8, 0, 0, "$(4+$ic2_difficulty.enemy_power*2)", (3+enemy_power), (1+enemy_power)),
			wct_enemy(7, 3, 1, 7, 0, "$(4+$ic2_difficulty.enemy_power*2)", (4+enemy_power), (1+enemy_power)),
			wct_enemy(8, 2, 1, 0, 0, "$(4+$ic2_difficulty.enemy_power*2)", (4+enemy_power), (1+enemy_power)),
			wct_enemy(9, 2, 0, 2, 1, "$(4+$ic2_difficulty.enemy_power*2)", 17, 10),
			wct_enemy(10, 2, 1, 4, 1, 25, (3+enemy_power), 6),
		}
	}
end
return { generators = generators, get_enemy_data = get_enemy_data, turns = 38, player_gold = 350 }
