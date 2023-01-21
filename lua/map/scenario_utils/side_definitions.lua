
---------------------------------------------------------
---- Code to add the [side]s to the [scenario]       ----
---- And the wml events to initilize the enemy sides ----
---------------------------------------------------------

_ = wesnoth.textdomain "wesnoth-wc"
helper = wesnoth.require("helper")

local function table_join(t1, t2)
	local r = {}
    for i=1,#t1 do
        r[#r+1] = t1[i]
    end
    for i=1,#t2 do
        r[#r+1] = t2[i]
    end
	return r
end

local function add_enemy_side(scenario, gold, starting_pos)
	wesnoth.log("debug", "starting pos:" .. starting_pos)
	local side_num = #scenario.side + 1
	-- recruits and leader gets overwritten later by [ic2_enemy] implementation
	local side = {
		wml.tag.ai {
			villages_per_scout=20,
			caution=0.1,
		},
		side = side_num,
		type = "Peasant",
		location_id = starting_pos,
		persistent = false,
		canrecruit = true,
		gold = gold,
		controller = "ai",
		team_name = "ic2_enemy",
		user_team_name = _ "Enemies",
		fog = true,
		village_gold = 2,
		terrain_liked = "",
		allow_player = false,
		disallow_observers = true,
		recruit = "",
	}
	table.insert(scenario.side, side)
end

local function add_player_side(scenario, scenario_num, gold)
	local side_num = #scenario.side + 1
	local side = {
		side = side_num,
		type = "Peasant",
		id = "ic2_leader" .. side_num,
		save_id = "ic2_leader" .. side_num,
		persistent = true,
		canrecruit = true,
		gold = gold,
		controller = "human",
		team_name = "ic2_player",
		user_team_name = _ "Allies",
		fog = true,
		village_gold = 2,
		share_vision = "all",
		terrain_liked = "",
	}
	if scenario_num == 1 then
		side.type=""
		side.color_lock = false
		side.faction_lock = false
		side.leader_lock = false
	end
	table.insert(scenario.side, side)
end

local function add_empty_side(scenario)
	local side_num = #scenario.side + 1
	local side = {
		side = side_num,
		controller = "null",
		no_leader = true,
		allow_player = false,
		hidden = true,
		terrain_liked = "",
	}
	table.insert(scenario.side, side)
end

function wc_ii_generate_sides(scenario, prestart_event, nplayers, scenario_num, enemy_stength, enemy_data, scenario_data)

	local n_enemty_sides = scenario_num == 5 and 6 or scenario_num

	for i = 1, nplayers do
		add_player_side(scenario, scenario_num, scenario_data.player_gold)
	end
	for i = nplayers + 1, 4 do
		add_empty_side(scenario)
	end
	for i = 1, n_enemty_sides do
		local side_data = enemy_data.sides[i]
		--note: this must go before the 'ic2_enemy_themed' generated by the mapgen.
		--note2: this must go after "difficulty selection"
		--note3: it doesn't
		table.insert(prestart_event, wml.tag.ic2_enemy {
			side = #scenario.side + 1,
			commander = side_data.commander,
			have_item = side_data.have_item,
			trained = side_data.trained,
			supply = side_data.supply,
			bonus_gold = enemy_data.bonus_gold,
			nplayers = nplayers,
			wml.tag.recall {
				level2 = side_data.recall_level2,
				level3 = side_data.recall_level3,
				level4 = side_data.recall_level4,
			},
		})
		add_enemy_side(scenario, enemy_data.gold, i + nplayers)
	end
end
