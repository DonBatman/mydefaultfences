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

if core.get_modpath("lucky_block") then
	lucky_block:add_blocks({
		{"dro", {"mydefaultfences:fence_"..nam}, 10},
		{"dro", {"mydefaultfences:fence_rail_"..nam}, 10},
		{"dro", {"mydefaultfences:fencegate_"..nam}, 2},
	})
end

end

if core.get_modpath("myores") then
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
		{"myores:silver", "Silver", "silver"},
		{"myores:cobalt", "Cobalt", "cobalt"},
		{"myores:uvarovite", "Uvarovite", "uvarovite"},
		{"myores:selenite", "Selenite", "selenite"},
		{"myores:miserite", "Miserite", "miserite"},
		{"myores:limonite", "Limonite", "limonite"},
		{"myores:lapis_lazuli","Lapis Lazuli", "lapis_lazuli"},
		{"myores:emerald", "Emerald", "emerald"},
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
-------------------------------------------------------------------------

if minetest.get_modpath("mywhiteblock") then

mydefaultfences = {}

mydefaultfences.colors = {
	{"black",      "Black",      "#000000"},
	{"blue",       "Blue",       "#2000c9"},
	{"brown",      "Brown",      "#954c05"},
	{"cyan",       "Cyan",       "#01ffd8"},
	{"darkgreen", "Dark Green",  "#005b07"},
	{"darkgrey",  "Dark Grey",   "#303030"},
	{"green",      "Green",      "#61ff01"},
	{"grey",       "Grey",       "#5b5b5b"},
	{"magenta",    "Magenta",    "#ff05bb"},
	{"orange",     "Orange",     "#ff8401"},
	{"pink",       "Pink",       "#ff65b5"},
	{"red",        "Red",        "#ff0000"},
	{"violet",     "Violet",     "#ab23b0"},
	{"white",      "White",      "#ffffff"},
	{"yellow",     "Yellow",     "#e3ff00"},
}

if core.get_modpath("mydye") then
	mydefaultfences.colors = {
	{"black",      	"Black",      		"#000000"},
	{"blue",       	"Blue",       		"#2000c9"},
	{"brown",     	"Brown",      		"#954c05"},
	{"cyan",      	"Cyan",       		"#01ffd8"},
	{"darkgreen", 	"Dark Green",  		"#005b07"},
	{"darkgrey",  	"Dark Grey",   		"#303030"},
	{"green",     	"Green",      		"#61ff01"},
	{"grey",       	"Grey",       		"#5b5b5b"},
	{"magenta",    	"Magenta",    		"#ff05bb"},
	{"orange",     	"Orange",     		"#ff8401"},
	{"pink",      	"Pink",       		"#ff65b5"},
	{"red",        	"Red",        		"#ff0000"},
	{"violet",     	"Violet",     		"#ab23b0"},
	{"white",      	"White",      		"#ffffff"},
	{"yellow",     	"Yellow",     		"#e3ff00"},
	{"peachpuff",	"Peachpuff", 		"#FFDAB9"},
	{"navy",		"Navy", 			"#000080"},
	{"coral",		"Coral", 			"#FF7F50"},
	{"khaki",		"Khaki", 			"#F0E68C"},
	{"lime",		"Lime", 			"#00FF00"},
	{"light_pink",	"Light Pink", 		"#FFB6C1"},
	{"light_grey",	"Light Grey", 		"#D3D3D3"},
	{"purple",		"Purple", 			"#800080"},
	{"maroon",		"Maroon", 			"#800000"},
	{"aquamarine",	"Aqua Marine", 		"#7FFFD4"},
	{"chocolate",	"Chocolate", 		"#D2691E"},
	{"crimson",		"Crimson", 			"#DC143C"},
	{"olive",		"Olive", 			"#808000"},
	{"white_smoke",	"White Smoke", 		"#F5F5F5"},
	{"mistyrose",	"Misty Rose", 		"#FFE4E1"},
	{"orchid",		"Orchid", 			"#DA70D6"},
	}
end

local whiteblock = {
		{"mywhiteblock:block","White Block","white"},
		}
	for i in ipairs (whiteblock) do
		local wo = whiteblock[i][1]
		local des = whiteblock[i][2]
		local nam = whiteblock[i][3]

	default.register_fence("mydefaultfences:fence_" .. nam, {
		description = (des .. " Fence"),
		texture = "mywhiteblock_"..nam..".png",
		material = wo,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sounds = default.node_sound_wood_defaults(),
		check_for_pole = true
	})

	minetest.register_craft({
		output = 'mydefaultfences:fence_'..nam..' 2',
		recipe = {
			{wo, 'default:stick', wo},
			{wo, 'default:stick', wo},
			{'', '', ''},
			}
	})

	default.register_fence_rail("mydefaultfences:fence_rail_"..nam, {
		description = des..(" Fence Rail"),
		texture = "mywhiteblock_"..nam..".png",
		inventory_image = "default_fence_rail_overlay.png^mywhiteblock_"..nam..".png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^mywhiteblock_"..nam..".png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = wo,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sounds = default.node_sound_wood_defaults()
	})

	minetest.register_craft({
		output = 'mydefaultfences:fence_rail_'..nam..' 2',
		recipe = {
			{wo, wo, ''},
			{'', '', ''},
			{wo, wo, ''},
			}
	})

	doors.register_fencegate("mydefaultfences:fencegate_" .. nam, {
		description = (des .. " Fence Gate"),
		texture = "mywhiteblock_"..nam..".png",
		material = wo,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
	})

	minetest.register_craft({
		output = 'mydefaultfences:fencegate_'..nam..' 2',
		recipe = {
			{'default:stick', wo, 'default:stick'},
			{'default:stick', wo, 'default:stick'},
			{'', '', ''},
			}
	})


for _, entry in ipairs(mydefaultfences.colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]

local paintables = {
	"mydefaultfences:fence_" .. color, "mydefaultfences:fence_rail_"..color, "mydefaultfences:fencegate_" .. color
}

	default.register_fence("mydefaultfences:fence_" .. color, {
		description = (desc .. " Fence"),
		texture = "mywhiteblock_white.png"..paint,
		material = wo,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sounds = default.node_sound_wood_defaults(),
		check_for_pole = true
	})
	default.register_fence_rail("mydefaultfences:fence_rail_"..color, {
		description = des..(" Fence Rail"),
		texture = "mywhiteblock_"..nam..".png",
		inventory_image = "default_fence_rail_overlay.png^mywhiteblock_"..nam..".png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^mywhiteblock_"..nam..".png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = wo,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sounds = default.node_sound_wood_defaults()
	})
		doors.register_fencegate("mydefaultfences:fencegate_" .. color, {
		description = (des .. " Fence Gate"),
		texture = "mywhiteblock_"..nam..".png",
		material = wo,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
	})

	if core.get_modpath("mypaint") then
		local colors = {}
		for _, entry in ipairs(mydefaultfences.colors) do
			table.insert(colors, entry[1])
		end
		mypaint.register(paintables, colors)
	end


end
end
end
