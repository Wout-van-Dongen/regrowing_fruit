-- Lemon Tree
if regrowing_fruit.settings:get_bool('ethereal_lemon', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_lemon_fruit_origin") or "ethereal:lemon",
        regrowing_fruit.settings:get("ethereal_lemon_leaves_origin") or "ethereal:lemon_leaves",
        regrowing_fruit.settings:get("ethereal_lemon_trunk_origin") or "default:tree",
        ethereal["lemontree"],
        false,
        regrowing_fruit.get_options("ethereal_lemon")
    );
    
    -- overwrite placement var with new schematic
    ethereal["lemontree"] = altered_schematic
end

-- Orange Tree
if regrowing_fruit.settings:get_bool('ethereal_orange', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_orange_fruit_origin") or "ethereal:orange",
        regrowing_fruit.settings:get("ethereal_orange_leaves_origin") or "ethereal:orange_leaves",
        regrowing_fruit.settings:get("ethereal_orange_trunk_origin") or "default:tree",
        ethereal["orangetree"],
        false,
        regrowing_fruit.get_options("ethereal_orange")
    );
    -- overwrite placement var with new schematic
    ethereal["orangetree"] = altered_schematic
end

-- Banana Tree
if regrowing_fruit.settings:get_bool('ethereal_banana', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_banana_fruit_origin") or "ethereal:banana",
        regrowing_fruit.settings:get("ethereal_banana_leaves_origin") or "ethereal:bananaleaves",
        regrowing_fruit.settings:get("ethereal_banana_trunk_origin") or "ethereal:banana_trunk",
        ethereal["bananatree"],
        true,
        regrowing_fruit.get_options("ethereal_banana")
    );
    -- overwrite placement var with new schematic
    ethereal["bananatree"] = altered_schematic
end

--Palm Tree
if regrowing_fruit.settings:get_bool('ethereal_coconut', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_coconut_fruit_origin") or "ethereal:coconut",
        regrowing_fruit.settings:get("ethereal_coconut_leaves_origin") or "ethereal:palmleaves",
        regrowing_fruit.settings:get("ethereal_coconut_trunk_origin") or "ethereal:palm_trunk",
        ethereal["palmtree"],
        true,
        regrowing_fruit.get_options("ethereal_coconut")
    );
    -- overwrite placement var with new schematic
    ethereal["palmtree"] = altered_schematic
end

--Olive Tree
if regrowing_fruit.settings:get_bool('ethereal_olive', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_olive_fruit_origin") or "ethereal:olive",
        regrowing_fruit.settings:get("ethereal_olive_leaves_origin") or "ethereal:olive_leaves",
        regrowing_fruit.settings:get("ethereal_olive_trunk_origin") or "ethereal:olive_trunk",
        ethereal["olivetree"],
        false,
        regrowing_fruit.get_options("ethereal_olive")
    );
    -- overwrite placement var with new schematic
    ethereal["olivetree"] = altered_schematic
end

-- Yellow Tree
if regrowing_fruit.settings:get_bool('ethereal_golden_apple', false) then
    local altered_schematic = regrowing_fruit.alter_tree_schematic(
        regrowing_fruit.settings:get("ethereal_golden_apple_fruit_origin") or "ethereal:golden_apple",
        regrowing_fruit.settings:get("ethereal_golden_apple_leaves_origin") or "ethereal:yellowleaves",
        regrowing_fruit.settings:get("ethereal_golden_apple_trunk_origin") or "ethereal:yellow_trunk",
        ethereal["yellowtree"],
        false,
        regrowing_fruit.get_options("ethereal_golden_apple")
    );
    -- overwrite placement var with new schematic
    ethereal["yellowtree"] = altered_schematic
end




