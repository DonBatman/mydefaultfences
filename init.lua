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

default.register_fence("mydefaultfences:fence_" .. nam, {
	description = (des .. " Fence"),
	texture = "default_"..nam..".png",
	material = wo,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	check_for_pole = true
})

minetest.register_craft({
	output = 'mydefaultfences:fence_'..nam..' 2',
	recipe = {
		{'default:'..nam, 'default:stick', 'default:'..nam},
		{'default:'..nam, 'default:stick', 'default:'..nam},
		{'', '', ''},
	}
})

default.register_fence_rail("mydefaultfences:fence_rail_"..nam, {
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

minetest.register_craft({
	output = 'mydefaultfences:fence_rail_'..nam..' 2',
	recipe = {
		{'default:'..nam, 'default:'..nam, ''},
		{'', '', ''},
		{'default:'..nam, 'default:'..nam, ''},
	}
})

doors.register_fencegate("mydefaultfences:fencegate_" .. nam, {
	description = (des .. " Fence Gate"),
	texture = "default_"..nam..".png",
	material = wo,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

minetest.register_craft({
	output = 'mydefaultfences:fencegate_'..nam..' 2',
	recipe = {
		{'default:stick', 'default:'..nam, 'default:stick'},
		{'default:stick', 'default:'..nam, 'default:stick'},
		{'', '', ''},
	}
})
end

if minetest.get_modpath("myores") then
local ores = {
		{"myores:basalt","Basalt","basalt"},
		{"myores:gneiss","Gneiss","gneiss"},
		{"myores:granite","Granite","granite"},
		{"myores:marble","Marble","marble"},
		{"myores:schist","Schist","schist"},
		{"myores:shale","Shale","shale"},
		{"myores:slate","Slate","slate"},
		{"myores:chromium","Chromium","chromium"},
		{"myores:manganese","Manganese","manganese"},
		{"myores:quartz", "Quartz","quartz"},
		{"myores:chalcopyrite","Chalcopyrite","chalcopyrite"},
		}
	for i in ipairs (ores) do
		local wo = ores[i][1]
		local des = ores[i][2]
		local nam = ores[i][3]

	default.register_fence("mydefaultfences:fence_" .. nam, {
		description = (des .. " Fence"),
		texture = "myores_"..nam..".png",
		material = wo,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sounds = default.node_sound_wood_defaults(),
		check_for_pole = true
	})

	minetest.register_craft({
		output = 'mydefaultfences:fence_'..nam..' 2',
		recipe = {
			{'default:'..nam, 'default:stick', 'default:'..nam},
			{'default:'..nam, 'default:stick', 'default:'..nam},
			{'', '', ''},
			}
	})

	default.register_fence_rail("mydefaultfences:fence_rail_"..nam, {
		description = des..(" Fence Rail"),
		texture = "myores_"..nam..".png",
		inventory_image = "default_fence_rail_overlay.png^myores_"..nam..".png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^myores_"..nam..".png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = wo,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sounds = default.node_sound_wood_defaults()
	})

	minetest.register_craft({
		output = 'mydefaultfences:fence_rail_'..nam..' 2',
		recipe = {
			{'default:'..nam, 'default:'..nam, ''},
			{'', '', ''},
			{'default:'..nam, 'default:'..nam, ''},
			}
	})

	doors.register_fencegate("mydefaultfences:fencegate_" .. nam, {
		description = (des .. " Fence Gate"),
		texture = "myores_"..nam..".png",
		material = wo,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
	})

	minetest.register_craft({
		output = 'mydefaultfences:fencegate_'..nam..' 2',
		recipe = {
			{'default:stick', 'default:'..nam, 'default:stick'},
			{'default:stick', 'default:'..nam, 'default:stick'},
			{'', '', ''},
			}
	})
	end
end


