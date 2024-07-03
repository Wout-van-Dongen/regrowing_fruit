-- Lemon Tree
if regrowing_fruit.settings:get_bool('ethereal_lemon', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_lemon_fruit_origin") or "ethereal:lemon",
        regrowing_fruit.settings:get("ethereal_lemon_leaves_origin") or "ethereal:lemon_leaves",
        ethereal["lemontree"],
        {
            only_initial = false,
            min_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_lemon_min_light_lvl")),
            max_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_lemon_max_light_lvl")),
            grow_chance = tonumber(regrowing_fruit.settings:get("ethereal_lemon_grow_chance")),
            grow_interval = tonumber(regrowing_fruit.settings:get("ethereal_lemon_grow_interval")),
            replacement_fruit = regrowing_fruit.settings:get("ethereal_lemon_fruit_replace"),
        }
    );
    
    -- overwrite placement var with new schematic
    ethereal["lemontree"] = altered_schematic
end

-- Orange Tree
if regrowing_fruit.settings:get_bool('ethereal_orange', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_orange_fruit_origin") or "ethereal:orange",
        regrowing_fruit.settings:get("ethereal_orange_leaves_origin") or "ethereal:orange_leaves",
        ethereal["orangetree"],
        {
            only_initial = false,
            min_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_orange_min_light_lvl")),
            max_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_orange_max_light_lvl")),
            grow_chance = tonumber(regrowing_fruit.settings:get("ethereal_orange_grow_chance")),
            grow_interval = tonumber(regrowing_fruit.settings:get("ethereal_orange_grow_interval")),
            replacement_fruit = regrowing_fruit.settings:get("ethereal_orange_fruit_replace"),
        }
    );
    -- overwrite placement var with new schematic
    ethereal["orangetree"] = altered_schematic
end

-- Banana Tree
if regrowing_fruit.settings:get_bool('ethereal_banana', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_banana_fruit_origin") or "ethereal:banana",
        regrowing_fruit.settings:get("ethereal_banana_leaves_origin") or "ethereal:bananaleaves",
        ethereal["bananatree"],
        {
            only_initial = true,
            min_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_banana_min_light_lvl")),
            max_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_banana_max_light_lvl")),
            grow_chance = tonumber(regrowing_fruit.settings:get("ethereal_banana_grow_chance")),
            grow_interval = tonumber(regrowing_fruit.settings:get("ethereal_banana_grow_interval")),
            replacement_fruit = regrowing_fruit.settings:get("ethereal_banana_fruit_replace"),
        }
    );
    -- overwrite placement var with new schematic
    ethereal["bananatree"] = altered_schematic
end

--Palm Tree
if regrowing_fruit.settings:get_bool('ethereal_coconut', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_coconut_fruit_origin") or "ethereal:coconut",
        regrowing_fruit.settings:get("ethereal_coconut_leaves_origin") or "ethereal:palmleaves",
        ethereal["palmtree"],
        {
            only_initial = true,
            min_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_coconut_min_light_lvl")),
            max_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_coconut_max_light_lvl")),
            grow_chance = tonumber(regrowing_fruit.settings:get("ethereal_coconut_grow_chance")),
            grow_interval = tonumber(regrowing_fruit.settings:get("ethereal_coconut_grow_interval")),
            replacement_fruit = regrowing_fruit.settings:get("ethereal_coconut_fruit_replace"),
        }
    );
    -- overwrite placement var with new schematic
    ethereal["palmtree"] = altered_schematic
end

--Olive Tree
if regrowing_fruit.settings:get_bool('ethereal_olive', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_olive_fruit_origin") or "ethereal:olive",
        regrowing_fruit.settings:get("ethereal_olive_leaves_origin") or "ethereal:olive_leaves",
        ethereal["olivetree"],
        {
            only_initial = false,
            min_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_olive_min_light_lvl")),
            max_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_olive_max_light_lvl")),
            grow_chance = tonumber(regrowing_fruit.settings:get("ethereal_olive_grow_chance")),
            grow_interval = tonumber(regrowing_fruit.settings:get("ethereal_olive_grow_interval")),
            replacement_fruit = regrowing_fruit.settings:get("ethereal_olive_fruit_replace"),
        }
    );
    -- overwrite placement var with new schematic
    ethereal["olivetree"] = altered_schematic
end

-- Yellow Tree
if regrowing_fruit.settings:get_bool('ethereal_golden_apple', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_golden_apple_fruit_origin") or "ethereal:golden_apple",
        regrowing_fruit.settings:get("ethereal_golden_apple_leaves_origin") or "ethereal:yellowleaves",
        ethereal["yellowtree"],
        {
            only_initial = false,
            min_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_golden_apple_min_light_lvl")),
            max_light_lvl = tonumber(regrowing_fruit.settings:get("ethereal_golden_apple_max_light_lvl")),
            grow_chance = tonumber(regrowing_fruit.settings:get("ethereal_golden_apple_grow_chance")),
            grow_interval = tonumber(regrowing_fruit.settings:get("ethereal_golden_apple_grow_interval")),
            replacement_fruit = regrowing_fruit.settings:get("ethereal_golden_apple_fruit_replace"),
        }
    );
    -- overwrite placement var with new schematic
    ethereal["yellowtree"] = altered_schematic
end




