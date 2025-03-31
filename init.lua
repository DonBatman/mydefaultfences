mydfences = {}

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

minetest.register_craft({
	output = 'mydfences:fence_'..nam..' 2',
	recipe = {
		{'', 'default:'..nam, ''},
		{'', 'default:'..nam, ''},
		{'', 'default:'..nam, ''},
	}
})

default.register_fence_rail("mydfences:fence_rail_"..nam, {
	description = des..(" Fence Rail"),
	texture = "default_"..nam..".png",
	inventory_image = "default_fence_rail_overlay.png^default_"..nam..".png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_rail_overlay.png^default_"..nam..".png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	material = wo,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

end
