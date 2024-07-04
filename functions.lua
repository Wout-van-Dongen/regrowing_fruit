local get_index_above = function(schematic, current_index)
    return current_index + schematic.size.x
end

local get_index_below = function(schematic, current_index)
    return current_index - schematic.size.x
end

local get_max_index = function(schematic)
    return schematic.size.x * schematic.size.y * schematic.size.z
end

regrowing_fruit.registered_leafdecays = {}

regrowing_fruit.register_leafdecay = function(trunks, decayables)
    for _, trunk in pairs(trunks) do
        -- Set trunk as decayables key if not yet used
        if type(regrowing_fruit.registered_leafdecays[trunk]) ~= "table" then
            regrowing_fruit.registered_leafdecays[trunk] = {}
        end
        -- Add decayables to register
        for _, decayable in pairs(decayables) do
            table.insert(regrowing_fruit.registered_leafdecays[trunk], decayable)
        end
    end
end

regrowing_fruit.push_registrations = function()
    -- Push leaf decay registrations
    for trunk, decayables in pairs(regrowing_fruit.registered_leafdecays) do
        default.register_leafdecay(
            {
                trunks = { trunk },
                leaves = decayables,
                radius = 3
            }
        )
    end
end

regrowing_fruit.alter_tree_schematic = function(fruit, leaves, trunk, schematic, options)
    --[[
        Options: 
        only_initial = true|false
        min_light_lvl = 0-15
        max_light_lvl = 0-15
        grow_chance = 0-9+
        grow_interval = 0-9+
        replacement_fruit = "node_name"
    ]]--

    -- Replacements for schema
    local replace_node_leaves = {name = leaves:gsub("[_%w]*:", regrowing_fruit.name .. ":")}
    local replace_node_fruit = {name = options and options["replacement_fruit"] or fruit}
    local replace_node_air = {name = "air"}

    -- Fetch the definition of the regular leaves
    local regular_leaves_def = minetest.registered_nodes[leaves]

    -- Copy the definition of the regular leaves
    local natural_leaves_def = {}
    for def_key, def_value in pairs(regular_leaves_def) do
        natural_leaves_def[def_key] = def_value
    end
    
    -- Alter the new definition where needed
    natural_leaves_def.drop = leaves
    
    -- Register the new node with new node def
    minetest.register_node(
        replace_node_leaves.name,
        natural_leaves_def
    )
    
    -- Register Leaf decay
    regrowing_fruit.register_leafdecay(
        { trunk }, -- Trunks
        { leaves, replace_node_leaves.name, replace_node_fruit.name } -- Decayables
    )

    -- Register new ABM for fruit growing
    minetest.register_abm({
        nodenames = replace_node_leaves.name,
        interval = options and options["grow_interval"] or regrowing_fruit.settings:get("grow_interval") or 30,
        chance = options and options["grow_chance"] or regrowing_fruit.settings:get("grow_chance") or 100,
        catch_up = regrowing_fruit.settings:get_bool("grow_catch_up", false),
        action = function(pos, node, active_object_count, active_object_count_wider)
            local target_pos = {x = pos.x, y = pos.y - 1, z = pos.z}
            local min_light_level = options and options["min_light_lvl"] or 0
            local max_light_level = options and options["max_light_lvl"] or 15
            local current_light_level = minetest.get_node_light(target_pos)
            -- Add fruit below the leaves, if there is space and the light level is approperiate
            if minetest.get_node(target_pos).name == "air" and current_light_level ~= nil and current_light_level >= min_light_level and current_light_level <= max_light_level then
                minetest.set_node(target_pos, replace_node_fruit)
            end
        end
    })
    
    -- Copy Schenmatic
    local altered_schematic = {}
    for key, value in pairs(schematic) do
        altered_schematic[key] = value
    end

    -- Alter the schematic
    for index, node in pairs(altered_schematic.data) do
    -- Replace all leaves if not only the intial positions
        if not (options and options["only_initial"]) and node.name == leaves then
            altered_schematic.data[index] = replace_node_leaves
        elseif node.name == fruit then
            -- Place leaves only above the position of the initial fruit
            if options and options["only_initial"] then
                local target_index = get_index_above(altered_schematic, index)
                if target_index <= get_max_index(altered_schematic) then
                    altered_schematic.data[target_index] = replace_node_leaves
                end
            end
            -- Remove the initial fruits
            if not regrowing_fruit.settings:get_bool('initial_fruit', false) then
                altered_schematic.data[index] = replace_node_air
            else
                altered_schematic.data[index] = replace_node_fruit
            end
        end
    end
    
    -- return new schematic
    return altered_schematic
end
