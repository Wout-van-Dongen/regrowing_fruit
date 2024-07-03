-- Apple Tree
if regrowing_fruit.settings:get_bool('default_apple', false) then
    local schematic = minetest.read_schematic(minetest.get_modpath("default") .. "/schematics/apple_tree_from_sapling.mts", {}  )
    local altered_schematic = regrowing_fruit.alter_tree_schematic (
        regrowing_fruit.settings:get("default_apple_fruit_origin") or "default:apple",
        regrowing_fruit.settings:get("default_apple_leaves_origin") or "default:leaves",
        schematic,
        {
            only_initial = false,
            min_light_lvl = tonumber(regrowing_fruit.settings:get("default_apple_min_light_lvl")),
            max_light_lvl = tonumber(regrowing_fruit.settings:get("default_apple_max_light_lvl")),
            grow_chance = tonumber(regrowing_fruit.settings:get("default_apple_grow_chance")),
            grow_interval = tonumber(regrowing_fruit.settings:get("default_apple_grow_interval")),
            replacement_fruit = regrowing_fruit.settings:get("default_apple_fruit_replace"),
        }
    )
    -- Overwrite Schematic Placement Function
    default.grow_new_apple_tree = function(pos)
        minetest.place_schematic({x = pos.x - 3, y = pos.y - 1, z = pos.z - 3}, altered_schematic, "random", nil, false)
    end
end
