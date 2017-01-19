-- c_doors by tumeninodes Jan 2017


-- these doors are going to need an nice api, as well as the chest

-- steel doors

minetest.register_node("c_doors:steel_Ldoor", {
	description = "Steel LDoor",
	inventory_image = "steel_door_inv.png",
	wield_image = "steel_door_inv.png",
	drawtype = "mesh",
	mesh = "centered_door.obj",
	tiles = {"steel_Ldoor.png"},
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
	tiles = {"steel_Ldoor.png"},
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


minetest.register_node("c_doors:steel_Rdoor", {
	description = "Steel RDoor",
	inventory_image = "steel_door_inv.png",
	wield_image = "steel_door_inv.png",
	drawtype = "mesh",
	mesh = "centered_door.obj",
	tiles = {"steel_Rdoor.png"},
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
		minetest.swap_node(pos, {name = "c_doors:steel_Rdoor_open", param2 = node.param2})
		minetest.sound_play("metal_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:steel_Rdoor_open", {
	description = "Steel RDoor Open",
	drawtype = "mesh",
	mesh = "centered_Rdoor_open.obj",
	tiles = {"steel_Rdoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:steel_Rdoor",
	groups = {not_in_creative_inventory = 1},
	sounds = default.node_sound_metal_defaults(),
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


--wood doors

minetest.register_node("c_doors:wood_Ldoor", {
	description = "Wood LDoor",
	inventory_image = "wood_door_inv.png",
	wield_image = "wood_door_inv.png",
	drawtype = "mesh",
	mesh = "centered_door.obj",
	tiles = {"wood_Ldoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:wood_Ldoor_open", param2 = node.param2})
		minetest.sound_play("doors_door_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:wood_Ldoor_open", {
	description = "Wood LDoor Open",
	drawtype = "mesh",
	mesh = "centered_Ldoor_open.obj",
	tiles = {"wood_Ldoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:wood_Ldoor",
	groups = {not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
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
		minetest.swap_node(pos, {name = "c_doors:wood_Ldoor", param2 = node.param2})
		minetest.sound_play("doors_door_close", {gain = 0.15, max_hear_distance = 2})
	end,
})


minetest.register_node("c_doors:wood_Rdoor", {
	description = "Wood RDoor",
	inventory_image = "wood_door_inv.png",
	wield_image = "wood_door_inv.png",
	drawtype = "mesh",
	mesh = "centered_door.obj",
	tiles = {"wood_Rdoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:wood_Rdoor_open", param2 = node.param2})
		minetest.sound_play("doors_door_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:wood_Rdoor_open", {
	description = "Wood RDoor Open",
	drawtype = "mesh",
	mesh = "centered_Rdoor_open.obj",
	tiles = {"wood_Rdoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:wood_Rdoor",
	groups = {not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
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
		minetest.swap_node(pos, {name = "c_doors:wood_Rdoor", param2 = node.param2})
		minetest.sound_play("doors_door_close", {gain = 0.15, max_hear_distance = 2})
	end,
})


--obsidian glass doors

minetest.register_node("c_doors:obsidian_glass_Ldoor", {
	description = "Obsidian Glass LDoor",
	inventory_image = "obsidian_glass_door_inv.png",
	wield_image = "obsidian_glass_door_inv.png",
	drawtype = "mesh",
	mesh = "centered_door.obj",
	tiles = {"obsidian_glass_door_side.png", "obsidian_glass_door_side.png", 			"obsidian_glass_Ldoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:obsidian_glass_Ldoor_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:obsidian_glass_Ldoor_open", {
	description = "Obsidian Glass LDoor Open",
	drawtype = "mesh",
	mesh = "centered_Ldoor_open.obj",
	tiles = {"obsidian_glass_Ldoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:obsidian_glass_Ldoor",
	groups = {not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
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
		minetest.swap_node(pos, {name = "c_doors:obsidian_glass_Ldoor", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.15, max_hear_distance = 2})
	end,
})


minetest.register_node("c_doors:obsidian_glass_Rdoor", {
	description = "Obsidian Glass RDoor",
	inventory_image = "obsidian_glass_door_inv.png",
	wield_image = "obsidian_glass_door_inv.png",
	drawtype = "mesh",
	mesh = "centered_door.obj",
	tiles = {"obsidian_glass_Rdoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:obsidian_glass_Rdoor_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:obsidian_glass_Rdoor_open", {
	description = "Obsidian Glass RDoor Open",
	drawtype = "mesh",
	mesh = "centered_Rdoor_open.obj",
	tiles = {"obsidian_glass_Rdoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:obsidian_glass_Rdoor",
	groups = {not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
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
		minetest.swap_node(pos, {name = "c_doors:obsidian_glass_Rdoor", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.15, max_hear_distance = 2})
	end,
})


-- glass doors

minetest.register_node("c_doors:glass_Ldoor", {
	description = "Glass LDoor",
	inventory_image = "glass_door_inv.png",
	wield_image = "glass_door_inv.png",
	drawtype = "mesh",
	mesh = "centered_door.obj",
	tiles = {"glass_Ldoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:glass_Ldoor_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:glass_Ldoor_open", {
	description = "Glass LDoor Open",
	drawtype = "mesh",
	mesh = "centered_Ldoor_open.obj",
	tiles = {"glass_Ldoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:glass_Ldoor",
	groups = {not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
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
		minetest.swap_node(pos, {name = "c_doors:glass_Ldoor", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.15, max_hear_distance = 2})
	end,
})


minetest.register_node("c_doors:glass_Rdoor", {
	description = "Glass RDoor",
	inventory_image = "glass_door_inv.png",
	wield_image = "glass_door_inv.png",
	drawtype = "mesh",
	mesh = "centered_door.obj",
	tiles = {"glass_Rdoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:glass_Rdoor_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:glass_Rdoor_open", {
	description = "Glass RDoor Open",
	drawtype = "mesh",
	mesh = "centered_Rdoor_open.obj",
	tiles = {"glass_Rdoor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:glass_Rdoor",
	groups = {not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
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
		minetest.swap_node(pos, {name = "c_doors:glass_Rdoor", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.15, max_hear_distance = 2})
	end,
})


-- how about some nice villa style windows

-- steel

minetest.register_node("c_doors:dbl_steel_win_sml", {
	description = "Small Steel Double Window",
	drawtype = "nodebox",
	tiles = {"dbl_steel.png", "dbl_steel.png", "dbl_steel.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.027133, -0.4375, 0.5, 0.027133},
			{-0.5, -0.5, -0.027133, 0.5, -0.4375, 0.027133},
			{0.4375, -0.5, -0.027133, 0.5, 0.5, 0.027133},
			{-0.0625, -0.5, -0.027133, 0.0625, 0.5, 0.027133},
			{-0.5, 0.4375, -0.027133, 0.5, 0.5, 0.027133},
--			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},  --transparent field
--			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},  --transparent field
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 0.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_steel_win_sml_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_steel_win_sml_open", {
	description = "Small Steel Double Window Open",
	drawtype = "nodebox",
	tiles = {"dbl_steel.png", "dbl_steel.png", "dbl_steel.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_steel_win_sml",
	groups = {cracky = 1, level = 2, not_in_creative_inventory = 1},
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
--			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},  --transparent field
--			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},  --transparent field
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
		minetest.swap_node(pos, {name = "c_doors:dbl_steel_win_sml", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_steel_win_lg", {
	description = "Large Double Steel Window",
	drawtype = "nodebox",
	inventory_image = "dble_steel_inv.png", 
	wield_image = "dble_steel_inv.png",
	tiles = {"dbl_steel.png", "dbl_steel.png", "dbl_steel.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
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
--			{-0.4375, 0.5625, -0.02, -0.0625, 1.4375, 0.02},  --transparent field
--			{0.0625, 0.5625, -0.02, 0.4375, 1.4375, 0.02},  --transparent field
--			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},  --transparent field
--			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},  --transparent field
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 1.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_steel_win_lg_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.50, max_hear_distance = 2})
	end,
})



minetest.register_node("c_doors:dbl_steel_win_lg_open", {
	description = "Large Double Steel Window Open",
    	drawtype = "nodebox",
	tiles = {"dbl_steel.png", "dbl_steel.png", "dbl_steel.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_steel_win_lg",
	groups = {cracky = 1, level = 2, not_in_creative_inventory = 1},
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
--			{0.472867, 0.5625, -0.4375, 0.5, 1.4375, -0.0625},  --transparent field
--			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},  --transparent field
--			{-0.472867, 0.5625, -0.4375, -0.5, 1.4375, -0.0625},  --transparent field
--			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},  --transparent field
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
		minetest.swap_node(pos, {name = "c_doors:dbl_steel_win_lg", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.50, max_hear_distance = 2})
	end,
})

--wood

minetest.register_node("c_doors:dbl_wood_win_sml", {
	description = "Small Wood Double Window",
	drawtype = "nodebox",
	tiles = {"dbl_wood.png", "dbl_wood.png", "dbl_wood.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.027133, -0.4375, 0.5, 0.027133},
			{-0.5, -0.5, -0.027133, 0.5, -0.4375, 0.027133},
			{0.4375, -0.5, -0.027133, 0.5, 0.5, 0.027133},
			{-0.0625, -0.5, -0.027133, 0.0625, 0.5, 0.027133},
			{-0.5, 0.4375, -0.027133, 0.5, 0.5, 0.027133},
--			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},  --transparent field
--			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},  --transparent field
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 0.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_wood_win_sml_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_wood_win_sml_open", {
	description = "Small Wood Double Window Open",
	drawtype = "nodebox",
	tiles = {"dbl_wood.png", "dbl_wood.png", "dbl_wood.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_wood_win_sml",
	groups = {cracky = 1, level = 2, not_in_creative_inventory = 1},
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
--			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},  --transparent field
--			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},  --transparent field
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
		minetest.swap_node(pos, {name = "c_doors:dbl_wood_win_sml", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_wood_win_lg", {
	description = "Large Double Wood Window",
	drawtype = "nodebox",
	inventory_image = "dble_wood_inv.png", 
	wield_image = "dble_wood_inv.png",
	tiles = {"dbl_wood.png", "dbl_wood.png", "dbl_wood.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
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
--			{-0.4375, 0.5625, -0.02, -0.0625, 1.4375, 0.02},  --transparent field
--			{0.0625, 0.5625, -0.02, 0.4375, 1.4375, 0.02},  --transparent field
--			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},  --transparent field
--			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},  --transparent field
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 1.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_wood_win_lg_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_wood_win_lg_open", {
	description = "Large Double Wood Window Open",
    drawtype = "nodebox",
	tiles = {"dbl_wood.png", "dbl_wood.png", "dbl_wood.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_wood_win_lg",
	groups = {cracky = 1, level = 2, not_in_creative_inventory = 1},
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
--			{0.472867, 0.5625, -0.4375, 0.5, 1.4375, -0.0625},  --transparent field
--			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},  --transparent field
--			{-0.472867, 0.5625, -0.4375, -0.5, 1.4375, -0.0625},  --transparent field
--			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},  --transparent field
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
		minetest.swap_node(pos, {name = "c_doors:dbl_wood_win_lg", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.50, max_hear_distance = 2})
	end,
})

-- obsidian glass

minetest.register_node("c_doors:dbl_obsidian_win_sml", {
	description = "Small Obsidian Double Window",
	drawtype = "nodebox",
	tiles = {"default_obsidian.png", "default_obsidian.png", "dbl_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.027133, -0.4375, 0.5, 0.027133},
			{-0.5, -0.5, -0.027133, 0.5, -0.4375, 0.027133},
			{0.4375, -0.5, -0.027133, 0.5, 0.5, 0.027133},
			{-0.0625, -0.5, -0.027133, 0.0625, 0.5, 0.027133},
			{-0.5, 0.4375, -0.027133, 0.5, 0.5, 0.027133},
--			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},  --transparent field
--			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},  --transparent field
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 0.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_obsidian_win_sml_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_obsidian_win_sml_open", {
	description = "Small Obsidian Double Window Open",
	drawtype = "nodebox",
	tiles = {"default_obsidian.png", "default_obsidian.png", "dbl_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_obsidian_win_sml",
	groups = {cracky = 1, level = 2, not_in_creative_inventory = 1},
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
--			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},  --transparent field
--			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},  --transparent field
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
		minetest.swap_node(pos, {name = "c_doors:dbl_obsidian_win_sml", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_obsidian_win_lg", {
	description = "Large Double Obsidian Window",
	drawtype = "nodebox",
	inventory_image = "dble_obsidian_inv.png", 
	wield_image = "dble_obsidian_inv.png",
	tiles = {"default_obsidian.png", "default_obsidian.png", "dbl_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
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
--			{-0.4375, 0.5625, -0.02, -0.0625, 1.4375, 0.02},  --transparent field
--			{0.0625, 0.5625, -0.02, 0.4375, 1.4375, 0.02},  --transparent field
--			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},  --transparent field
--			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},  --transparent field
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 1.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_obsidian_win_lg_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_obsidian_win_lg_open", {
	description = "Large Double Obsidian Window Open",
    drawtype = "nodebox",
	tiles = {"default_obsidian.png", "default_obsidian.png", "dbl_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_obsidian_win_lg",
	groups = {cracky = 1, level = 2, not_in_creative_inventory = 1},
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
--			{0.472867, 0.5625, -0.4375, 0.5, 1.4375, -0.0625},  --transparent field
--			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},  --transparent field
--			{-0.472867, 0.5625, -0.4375, -0.5, 1.4375, -0.0625},  --transparent field
--			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},  --transparent field
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
		minetest.swap_node(pos, {name = "c_doors:dbl_obsidian_win_lg", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.50, max_hear_distance = 2})
	end,
})

--glass

minetest.register_node("c_doors:dbl_glass_win_sml", {
	description = "Small Glass Double Window",
	drawtype = "nodebox",
	tiles = {"dbl_glass.png", "dbl_glass.png", "dbl_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.027133, -0.4375, 0.5, 0.027133},
			{-0.5, -0.5, -0.027133, 0.5, -0.4375, 0.027133},
			{0.4375, -0.5, -0.027133, 0.5, 0.5, 0.027133},
			{-0.0625, -0.5, -0.027133, 0.0625, 0.5, 0.027133},
			{-0.5, 0.4375, -0.027133, 0.5, 0.5, 0.027133},
--			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},  --transparent field
--			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},  --transparent field
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 0.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_glass_win_sml_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_glass_win_sml_open", {
	description = "Small Glass Double Window Open",
	drawtype = "nodebox",
	tiles = {"dbl_glass.png", "dbl_glass.png", "dbl_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_glass_win_sml",
	groups = {cracky = 1, level = 2, not_in_creative_inventory = 1},
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
--			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},  --transparent field
--			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},  --transparent field
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
		minetest.swap_node(pos, {name = "c_doors:dbl_glass_win_sml", param2 = node.param2})
		minetest.sound_play("doors_glass_door_close", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_glass_win_lg", {
	description = "Large Double Glass Window",
	drawtype = "nodebox",
	inventory_image = "dbl_glass_inv.png", 
	wield_image = "dbl_glass_inv.png",
	tiles = {"dbl_glass.png", "dbl_glass.png", "dbl_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
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
--			{-0.4375, 0.5625, -0.02, -0.0625, 1.4375, 0.02},  --transparent field
--			{0.0625, 0.5625, -0.02, 0.4375, 1.4375, 0.02},  --transparent field
--			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},  --transparent field
--			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},  --transparent field
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 1.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_glass_win_lg_open", param2 = node.param2})
		minetest.sound_play("doors_glass_door_open", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_glass_win_lg_open", {
	description = "Large Double Glass Window Open",
    drawtype = "nodebox",
	tiles = {"dbl_glass.png", "dbl_glass.png", "dbl_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_glass_win_lg",
	groups = {cracky = 1, level = 2, not_in_creative_inventory = 1},
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
--			{0.472867, 0.5625, -0.4375, 0.5, 1.4375, -0.0625},  --transparent field
--			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},  --transparent field
--			{-0.472867, 0.5625, -0.4375, -0.5, 1.4375, -0.0625},  --transparent field
--			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},  --transparent field
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
		minetest.swap_node(pos, {name = "c_doors:dbl_glass_win_lg", param2 = node.param2})
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
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:chest",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.1875, 0.5},
			{-0.5, 0.1875, 0.5, 0.5, 1.1875, 0.8125},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.1875, 0.5},
			{-0.5, 0.1875, 0.5, 0.5, 1.1875, 0.8125},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:chest", param2 = node.param2})
		minetest.sound_play("doors_door_close", {gain = 0.20, max_hear_distance = 2})
	end,
})
