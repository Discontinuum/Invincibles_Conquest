
-- Loads the WC2 'engine' that is making bonus points, items, training etc work.

ic2_convert = wesnoth.require("./../shared_utils/wml_converter.lua")

ic2_ability_events = wesnoth.require("./ability_events.lua")
ic2_artifacts = wesnoth.require("./artifacts.lua")
ic2_bonus = wesnoth.require("./bonus.lua")
ic2_color = wesnoth.require("./color.lua")
ic2_dropping = wesnoth.require("./dropping.lua")
ic2_effects = wesnoth.require("./effects.lua")
ic2_heroes = wesnoth.require("./heroes.lua")
ic2_pickup_confirmation_dialog = wesnoth.require("./pickup_confirmation_dialog.lua")
ic2_random_names = wesnoth.require("./random_names.lua")
ic2_recall = wesnoth.require("./recall.lua")
ic2_supply = wesnoth.require("./supply.lua")
ic2_training = wesnoth.require("./training.lua")
ic2_unittypedata = wesnoth.require("./unittypedata.lua")
ic2_utils = wesnoth.require("./utils.lua")

ic2_wiki = wesnoth.require("./wocopedia/help.lua")

ic2_invest = wesnoth.require("./invest/invest.lua")
ic2_invest_show_dialog = wesnoth.require("./invest/invest_show_dialog.lua")
ic2_invest_tellunit = wesnoth.require("./invest/invest_tellunit.lua")

wesnoth.require("./promote_commander.lua")
