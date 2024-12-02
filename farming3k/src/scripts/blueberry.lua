-- Custom grow function for the blueberry
local function customBlueberryStart(self)
    Plant:water("r'lyeh water",70)
    Plant:fertilize("Happy Ed's fertilizer",30)
    Plant:fertilize("Hippie fertilizer",30)
    Plant:fertilize("Smurfy fertilizer",30)
    Plant:aerate("Serinth air",10)
    Plant:spray("Hunch pesticide",10)
end

local function customBlueberryGrow(self)
end

-- Add instances of Plant to the table
plants["blueberry"] = Plant:new("blueberry")
-- Assign the custom grow function to the "blueberry" instance
plants["blueberry"].start = customBlueberryStart
plants["blueberry"].grow = customBlueberryGrow