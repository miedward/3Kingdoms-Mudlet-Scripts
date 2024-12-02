-- Custom grow function for the raspberry
local function customRaspberryStart(self)
    Plant:fertilize("Hippie fertilizer",35)
    Plant:fertilize("Happy Ed's fertilizer",35)
end

local function customRaspberryGrow(self)
    if tonumber(Farm.time) % 2 == 1 then
        Plant:fertilize("Hippie fertilizer",35)
     else
        Plant:fertilize("Happy Ed's fertilizer",35)
     end
end

-- Add instances of Plant to the table
plants["raspberry"] = Plant:new("raspberry")
-- Assign the custom grow function to the "raspberry" instance
plants["raspberry"].start = customRaspberryStart
plants["raspberry"].grow = customRaspberryGrow