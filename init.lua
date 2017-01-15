-- c_doors by tumeninodes Jan 2017


-- the left door  these doors are going to need an nice api, as well as the chest

minetest.register_node("c_doors:steel_Ldoor", {
	description = "Steel LDoor",
	inventory_image = "steel_inv.png",
	wield_image = "steel_inv.png",
	drawtype = "mesh",
	mesh = "centered_Ldoor.obj",
	tiles = {"Ldoor_steel.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:steel_Ldoor_open", param2 = node.param2})
		minetest.sound_play("metal_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:steel_Ldoor_open", {
	description = "Steel LDoor Open",
	drawtype = "mesh",
	mesh = "centered_Ldoor_open.obj",
	tiles = {"Ldoor_steel.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:steel_Ldoor",
	groups = {not_in_creative_inventory = 1},
	sounds = default.node_sound_metal_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.9375, -0.375, 1.5, 0.0625},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.9375, -0.375, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:steel_Ldoor", param2 = node.param2})
		minetest.sound_play("metal_close", {gain = 0.15, max_hear_distance = 2})
	end,
})


-- the right door

minetest.register_node("c_doors:steel_Rdoor", {
	description = "Steel RDoor",
	inventory_image = "steel_inv.png",
	wield_image = "steel_inv.png",
	drawtype = "mesh",
	mesh = "centered_Rdoor.obj",
	tiles = {"Rdoor_steel.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
	sound_open = "doors_steel_door_open",
	sound_close = "doors_steel_door_close",
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:steel_Rdoor_open", param2 = node.param2})
		minetest.sound_play("metal_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:steel_Rdoor_open", {
	description = "Steel RDoor Open",
	drawtype = "mesh",
	mesh = "centered_Rdoor_open.obj",
	tiles = {"Rdoor_steel.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:steel_Rdoor",
	groups = {not_in_creative_inventory = 1},
	sounds = default.node_sound_metal_defaults(),
	sound_open = "doors_steel_door_open",
	sound_close = "doors_steel_door_close",
	selection_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, -0.9375, 0.5, 1.5, 0.0625},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, -0.9375, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:steel_Rdoor", param2 = node.param2})
		minetest.sound_play("metal_close", {gain = 0.15, max_hear_distance = 2})
	end,
})


-- some nice villa style windows

minetest.register_node("c_doors:dbl_win_sml", {
	description = "Small Double Window",
	drawtype = "nodebox",
	tiles = {"default_obsidian.png", "default_obsidian.png", "dbl_win_sml_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.027133, -0.4375, 0.5, 0.027133},
			{-0.5, -0.5, -0.027133, 0.5, -0.4375, 0.027133},
			{0.4375, -0.5, -0.027133, 0.5, 0.5, 0.027133},
			{-0.0625, -0.5, -0.027133, 0.0625, 0.5, 0.027133},
			{-0.5, 0.4375, -0.027133, 0.5, 0.5, 0.027133},
--			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},  --transparent feild
--			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},  --transparent feild
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 0.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_win_sml_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_win_sml_open", {
	description = "Small Double Window Open",
	drawtype = "nodebox",
	tiles = {"default_obsidian.png", "default_obsidian.png",
    "dbl_win_sml_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_win_sml",
	groups = {cracky = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{0.472867, -0.5, -0.5, 0.5, 0.5, -0.4375},
			{0.472867, -0.5, -0.0625, 0.5, 0.5, 0},
			{-0.5, -0.5, -0.5, -0.472867, 0.5, -0.4375},
			{-0.5, -0.5, -0.0625, -0.472867, 0.5, 0},
			{0.472867, 0.4375, -0.5, 0.5, 0.5, 0},
			{-0.5, 0.4375, -0.5, -0.472867, 0.5, 0},
			{-0.5, -0.5, -0.5, -0.472867, -0.4375, 0},
			{0.472867, -0.5, -0.5, 0.5, -0.4375, 0},
--			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},  --transparent feild
--			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},  --transparent feild
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0},
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.472867, 0.5, 0},
			{0.472867, -0.5, -0.5, 0.5, 0.5, 0},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_win_sml", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_win_lg", {
	description = "Large Double Window",
	drawtype = "nodebox",
	tiles = {"default_obsidian.png", "default_obsidian.png",
    "dbl_win_sml_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.027133, -0.4375, 1.5, 0.027133},
			{-0.5, -0.5, -0.027133, 0.5, -0.4375, 0.027133},
			{0.4375, -0.5, -0.027133, 0.5, 1.5, 0.027133},
			{-0.0625, -0.5, -0.027133, 0.0625, 1.5, 0.027133},
			{-0.5, 0.4375, -0.027133, 0.5, 0.5625, 0.027133},
			{-0.5, 1.4375, -0.027133, 0.5, 1.5, 0.027133},
--			{-0.4375, 0.5625, -0.02, -0.0625, 1.4375, 0.02},  --transparent feild
--			{0.0625, 0.5625, -0.02, 0.4375, 1.4375, 0.02},  --transparent feild
--			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},  --transparent feild
--			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},  --transparent feild
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 1.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_win_lg_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.50, max_hear_distance = 2})
	end,
})



minetest.register_node("c_doors:dbl_win_lg_open", {
	description = "Large Double Window Open",
    drawtype = "nodebox",
	tiles = {"default_obsidian.png", "default_obsidian.png",
    "dbl_win_sml_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_win_lg",
	groups = {cracky = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{0.472867, -0.5, -0.5, 0.5, 1.5, -0.4375},
			{0.472867, -0.5, -0.0625, 0.5, 1.5, 0},
			{-0.5, -0.5, -0.5, -0.472867, 1.5, -0.4375},
			{-0.5, -0.5, -0.0625, -0.472867, 1.5, 0},
			{0.472867, 0.4375, -0.5, 0.5, 0.5625, 0},
			{-0.5, 0.4375, -0.5, -0.472867, 0.5625, 0},
			{-0.5, -0.5, -0.5, -0.472867, -0.4375, 0},
			{0.472867, -0.5, -0.5, 0.5, -0.4375, 0},
			{0.472867, 1.4375, -0.5, 0.5, 1.5, 0},
			{-0.5, 1.4375, -0.5, -0.472867, 1.5, -0.0625},
--			{0.472867, 0.5625, -0.4375, 0.5, 1.4375, -0.0625},  --transparent feild
--			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},  --transparent feild
--			{-0.472867, 0.5625, -0.4375, -0.5, 1.4375, -0.0625},  --transparent feild
--			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},  --transparent feild
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, 1.5, 0},
			{0.4375, -0.5, -0.5, 0.5, 1.5, 0},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{0.472867, -0.5, -0.5, 0.5, 1.5, 0},
			{-0.5, -0.5, -0.5, -0.472867, 1.5, 0},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_win_lg", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.50, max_hear_distance = 2})
	end,
})

-- An Animated Chest needs further development

minetest.register_node("c_doors:chest", {
	description = "Chest",
	tiles = {"default_chest_top.png", "default_chest_top.png",
		"default_chest_side.png", "default_chest_side.png",
		"default_chest_side.png", "default_chest_front.png"},
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
	sounds = default.node_sound_wood_defaults(),
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:chest_open", param2 = node.param2})
		minetest.sound_play("doors_door_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:chest_open", {
	description = "Open Chest",
	drawtype = "mesh",
	mesh = "chest_open.obj",
	tiles = {"default_chest_top.png", "default_chest_side.png", "default_chest_front.png"},
	--use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:chest",
	groups = {not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.25, 0.75, 0.5, 1.1875, 0.8125},
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, 0.1875, 0.5, 0.5, 0.25, 0.5625},
			{0.4375, 0.25, 0.5, 0.5, 1.1875, 0.8125},
			{-0.5, 0.25, 0.5, -0.4375, 1.1875, 0.8125},
			{-0.5, 1.125, 0.5, 0.5, 1.1875, 0.8125},
			{-0.5, 0.25, 0.5, 0.5, 0.3125, 0.8125},
			{0.4375, -0.5, -0.5, 0.5, 0.1875, 0.5},
			{-0.5, -0.5, -0.5, -0.4375, 0.1875, 0.5},
			{-0.5, -0.5, 0.375, 0.5, 0.1875, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.1875, -0.4375},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:chest", param2 = node.param2})
		minetest.sound_play("doors_door_close", {gain = 0.20, max_hear_distance = 2})
	end,
})
