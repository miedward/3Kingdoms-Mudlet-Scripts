-- Custom grow function for the blackberry
local function customBlackberryStart(self)
    Plant:water("r'lyeh water",30)
    Plant:fertilize("Happy Ed's fertilizer",20)
    Plant:fertilize("Hippie fertilizer",35)
    Plant:fertilize("Smurfy fertilizer",35)
    Plant:aerate("Serinth air",10)
    Plant:spray("Hunch pesticide",30)
end

local function customBlackberryGrow(self)
    Plant:water("r'lyeh water",30)
    Plant:fertilize("Happy Ed's fertilizer",20)
    Plant:fertilize("Hippie fertilizer",35)
    Plant:fertilize("Smurfy fertilizer",35)
    Plant:aerate("Serinth air",10)
    Plant:spray("Hunch pesticide",30)
end

-- Add instances of Plant to the table
plants["blackberry"] = Plant:new("blackberry")
-- Assign the custom grow function to the "blackberry" instance
plants["blackberry"].start = customBlackberryStart
plants["blackberry"].grow = customBlackberryGrow