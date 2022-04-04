local _ = wesnoth.textdomain 'wesnoth-wc'
local on_event = wesnoth.require("on_event")

local strings = {
	defeat = _ "No! This is the end!",
	promotion = _ "Don’t lose heart comrades, we can still win this battle."
}

-- when a leader dies, take a commonder and make him the leader.
on_event("die", function(cx)
	local u = wesnoth.units.get(cx.x1, cx.y1)
	if (not u) or (not u:matches({ canrecruit = true })) then
		return
	end
	local commander = wesnoth.units.find_on_map {
		side = u.side,
		role = "commander",
		canrecruit = false
	}
	commander = commander[1]
	if commander then
		commander:extract()
		commander.id = "ic2_leader"..u.side	
		commander.canrecruit = true
		commander:remove_modifications({ id = "ic2_commander_overlay" })
		commander:to_map()
		wesnoth.wml_actions.message {
			id = commander.id,
			message = strings.promotion
		}
	else
		if u.side < 4 then
			wesnoth.wml_actions.message {
				side = "1,2,3",
				message = strings.defeat
			}
			wesnoth.wml_actions.endlevel {
				result = "defeat"
			}
		end
	end
end)
