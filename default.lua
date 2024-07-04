-- Apple Tree
if regrowing_fruit.settings:get_bool('default_apple', false) then
    local schematic = minetest.read_schematic(minetest.get_modpath("default") .. "/schematics/apple_tree_from_sapling.mts", {}  )
    local altered_schematic = regrowing_fruit.alter_tree_schematic (
        regrowing_fruit.settings:get("default_apple_fruit_origin") or "default:apple",
        regrowing_fruit.settings:get("default_apple_leaves_origin") or "default:leaves",
        regrowing_fruit.settings:get("default_apple_trunk_origin") or "default:tree",
        schematic,
        false,
        regrowing_fruit.get_options("default_apple")
    )
    -- Overwrite Schematic Placement Function
    default.grow_new_apple_tree = function(pos)
        minetest.place_schematic({x = pos.x - 3, y = pos.y - 1, z = pos.z - 3}, altered_schematic, "random", nil, false)
    end
end
