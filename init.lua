local sticks = {
		{"default:cobble","Cobble","cobble"},
		{"default:stone","Stone","stone"},
		{"default:desert_cobble","Desert Cobble","desert_cobble"},
		{"default:desert_stone","Desert Stone","desert_stone"},
		{"default:tree","Tree","tree"},
		{"default:sandstone","Sandstone","sandstone"},
		{"default:desert_sandstone","Desert Sandstone","desert_sandstone"},
		{"default:gravel","Gravel","gravel"},
		}
for i in ipairs (sticks) do
local wo = sticks[i][1]
local des = sticks[i][2]
local nam = sticks[i][3]

minetest.register_node("mydfences:fence_"..nam, {
	description = des.." Fence",
	drawtype = "fencelike",
	tiles = {"default_"..nam..".png"},
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2},
	sounds = default.node_sound_wood_defaults(),
})
--[[
minetest.register_craft({
	output = 'default:fence_wood 2',
	recipe = {
		{'', 'default:'..nam, ''},
		{'', 'default:'..nam, ''},
		{'', 'default:'..nam, ''},
	}
})
minetest.register_craft({
	output = 'mydfences:fence_'..nam..' 2',
	recipe = {
		{st, st, st},
		{st, st, st},
	}
})
minetest.register_craft({
	output = st..' 4',
	recipe = {
		{wo},
	}
})
minetest.register_craftitem(st, {
	description = des.." Stick",
	inventory_image = "default_stick.png"..col,
	groups = {stick=1},
})
--]]
end
