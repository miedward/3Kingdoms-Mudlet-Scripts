if (matches[2]) then
    local thisplant = matches[2]
    doFarmThings(thisplant)
else
    triggerNumber = tempComplexRegexTrigger("sproutlingPlantTriggerTmp", "^A sproutling (.*) plant.", [[
        local thisplant = matches[2]
        doFarmThings(thisplant)
    ]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
    send("exa plant")
end

local function doFarmThings(thisplant)
    if (plants[thisplant] ~= nil) then
        Farm.plant = plants[thisplant]
        else
        Farm.plant = Plant:new(thisplant)
        end
        -- set temp triggers for ground conditions
        -- send("exa ground")
        send("stake claim")
        Farm.plant:start()
        send("grow plant")
        Farm.time = 0
end