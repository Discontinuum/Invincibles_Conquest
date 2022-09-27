local helper = wesnoth.require("helper")
local T = wml.tag
local _ = wesnoth.textdomain 'wesnoth-wc'

local ic2_heroes = {}
-- an array of wml tables, usually containing type,
ic2_heroes.commander_overlay = "misc/wct-commander.png"
ic2_heroes.hero_overlay = "misc/hero-icon.png"
ic2_heroes.dialogues = {}
ic2_heroes.trait_heroic = nil
ic2_heroes.trait_expert = nil

if filesystem.have_file("./unittypedata.lua") then
	local data = wesnoth.require("./unittypedata.lua")
	for v,k in pairs(data) do
		ic2_heroes.dialogues[v] = k
	end
end

function ic2_heroes.find_dialogue(t)
	return ic2_heroes.dialogues[t] or ic2_heroes.dialogues.default
end

function ic2_heroes.init_data()
	local cfg_heroic = ic2_utils.get_ic2_data("trait_heroic")
	local cfg_expert = ic2_utils.get_ic2_data("trait_expert")
	ic2_heroes.trait_heroic = wml.get_child(wml.get_child(cfg_heroic, "trait_heroic"), "trait")
	ic2_heroes.trait_expert = wml.get_child(wml.get_child(cfg_expert, "trait_expert"), "trait")
end

function ic2_heroes.commander_overlay_object()
	return wml.tag.object {
		id = "ic2_commander_overlay",
		wml.tag.effect {
			apply_to="overlay",
			add = ic2_heroes.commander_overlay
		}
	}
end

function ic2_heroes.hero_overlay_object()
	return wml.tag.object {
		id = "ic2_hero_overlay",
		wml.tag.effect {
			apply_to="overlay",
			add = ic2_heroes.hero_overlay
		}
	}
end
-- @a t the unit type id
-- @returns the content of [modifications] for a unit.
function ic2_heroes.generate_traits(t)
	local res = {}

	if ic2_heroes.trait_heroic then
		table.insert(res, wml.tag.trait (ic2_heroes.trait_heroic))
	end
	for k,v in ipairs(ic2_era.hero_traits) do
		if v.types[t] then
			table.insert(res, wml.tag.trait (v.trait))
		end
	end
	return res
end

-- @a t the unit type
function ic2_heroes.place(t, side, x, y, is_commander)
	--print("ic2_heroes.place type=" .. t .. " side=" .. side)

	local modifications = ic2_heroes.generate_traits(t)
	table.insert(modifications, 1, wml.tag.advancement { ic2_scenario.experience_penalty() })

	table.insert(
		modifications,
		is_commander and ic2_heroes.commander_overlay_object() or ic2_heroes.hero_overlay_object()
	)
	local u = wesnoth.units.create {
		type = t,
		side = side,
		random_traits = false,
		role = is_commander and "commander" or nil,
		wml.tag.modifications (modifications),
	}
	if is_commander then
		u.variables["wc2.is_commander"] = true
	end
	local x2,y2 = wesnoth.paths.find_vacant_hex(x, y, u)
	u:to_map(x2,y2)
	return u
end

function wesnoth.wml_actions.ic2_random_hero(cfg)
	local side_num = cfg.side or wml.error("missing side= attribute in [ic2_initial_hero]")
	local x = cfg.x or wml.error("missing x= attribute in [ic2_initial_hero]")
	local y = cfg.y or wml.error("missing y= attribute in [ic2_initial_hero]")
	local t = ic2_era.pick_deserter(side_num)

	if t == nil then
		print("No serserter available for side", side_num)
		return
	end
	ic2_heroes.place(t, side_num, x, y)
end

-- prints the dialoge when @finder finds @found from a unit type, both parameters are lua unit objects.
function ic2_heroes.founddialouge(finder, found)
	local type_dialogue = ic2_heroes.find_dialogue(found.type)
	wesnoth.wml_actions.message {
		id = found.id,
		message = type_dialogue.founddialogue,
	}
	local reply = type_dialogue.reply or ic2_heroes.dialogues.default.reply

	for i, alt_replay in ipairs(type_dialogue.alt_reply or {}) do
		local function matches(attr)
			return string.match(alt_replay[attr] or "", finder[attr])
		end
		if matches("race") or matches("gender") or matches("type") then
			reply = alt_replay.reply
		end
	end
	wesnoth.wml_actions.message {
		id = finder.id,
		message = reply,
	}
end

ic2_heroes.init_data()

return ic2_heroes
