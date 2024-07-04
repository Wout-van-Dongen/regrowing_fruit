-- Mod container
regrowing_fruit = {}

-- Mod name
regrowing_fruit.name = 'regrowing_fruit'

-- Mod path
regrowing_fruit.path = minetest.get_modpath(regrowing_fruit.name)

-- Load Settings
regrowing_fruit.settings = Settings(regrowing_fruit.path .. "/regrowing_fruit.conf")

-- Mod functions
dofile(regrowing_fruit.path .. "/functions.lua")

-- Run the subscripts if mod is enabled
if regrowing_fruit.settings:get_bool("mod_enabled", false) then
    if regrowing_fruit.settings:get_bool("default_enabled", false) and minetest.get_modpath("default") ~= nil then
        dofile(regrowing_fruit.path .. "/default.lua")
    end
    if regrowing_fruit.settings:get_bool("ethereal_enabled", false) and minetest.get_modpath("ethereal") ~= nil then
        dofile(regrowing_fruit.path .. "/ethereal.lua")
    end
end

-- Push all registrations
regrowing_fruit.push_registrations()
