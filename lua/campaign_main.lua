-- the main file for the WC2 mp campaign

T = wml.tag
on_event = wesnoth.require("on_event")


wesnoth.dofile("./game_mechanics/_load.lua")

ic2_era = wesnoth.require("./era/era.lua")

ic2_enemy = wesnoth.dofile("./campaign/enemy.lua")

ic2_scenario = wesnoth.dofile("./campaign/scenario.lua")
wesnoth.dofile("./campaign/autorecall.lua")
wesnoth.dofile("./campaign/objectives.lua")
wesnoth.dofile("./campaign/enemy_themed.lua")

on_event("prestart", function(cx)
	wesnoth.wml_actions.ic2_fix_colors {
		wml.tag.player_sides {
			side="1,2,3,4",
			wml.tag.has_unit {
				canrecruit = true,
			}
		}
	}
end)
