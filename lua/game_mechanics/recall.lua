local function add_rc_object(u)
	if not u.variables.ic2_has_recall_object then
		u.variables.ic2_has_recall_object = true
		u:add_modification("object", {
			{"effect", {
				apply_to = "ic2_recall_cost"
			}},
		})
	end
end

-- the implementation of the addons reduces recall cost mechanic.
function wesnoth.wml_actions.ic2_set_recall_cost(cfg)
	for i,u in ipairs(wesnoth.units.find_on_map { side = "1,2,3,4" }) do
		add_rc_object(u)
	end
end
