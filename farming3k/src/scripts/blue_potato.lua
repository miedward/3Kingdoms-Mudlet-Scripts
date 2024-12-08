-- Custom grow function for the blue potato
local function customBluePotatoStart(self)
    Plant:water("r'lyeh water",140)
    Plant:fertilize("Happy Ed's fertilizer",60)
    Plant:fertilize("Hippie fertilizer",60)
    Plant:fertilize("Smurfy fertilizer",60)
    Plant:aerate("Serinth air",10)
    Plant:spray("Hunch pesticide",10)
end

local function customBluePotatoGrow(self)
    Plant:water("r'lyeh water",140)
    Plant:fertilize("Happy Ed's fertilizer",60)
    Plant:fertilize("Hippie fertilizer",60)
    Plant:fertilize("Smurfy fertilizer",60)
    Plant:aerate("Serinth air",10)
    Plant:spray("Hunch pesticide",10)
end

-- Add instances of Plant to the table
plants["blue potato"] = Plant:new("blue potato")
-- Assign the custom grow function to the "blue potato" instance
plants["blue potato"].start = customBluePotatoStart
plants["blue potato"].grow = customBluePotatoGrow