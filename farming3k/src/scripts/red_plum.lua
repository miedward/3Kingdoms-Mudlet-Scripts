-- Custom grow function for the red plum
local function customRedPlumStart(self)
    Plant:water("r'lyeh water",105)
    Plant:fertilize("Happy Ed's fertilizer",35)
    Plant:fertilize("Hippie fertilizer",35)
    Plant:fertilize("Smurfy fertilizer",35)
    Plant:aerate("Serinth air",10)
    Plant:spray("Hunch pesticide",10)
end

local function customRedPlumGrow(self)
    Plant:water("r'lyeh water",105)
    Plant:spray("Hunch pesticide",10)
    Plant:fertilize("Hippie fertilizer",20)
    Plant:spray("Mount Perplexus pesticide",10)
    Plant:aerate("Ryogi-Pei air",20)
end

-- Add instances of Plant to the table
plants["red plum"] = Plant:new("red plum")
-- Assign the custom grow function to the "red plum" instance
plants["red plum"].start = customRedPlumStart
plants["red plum"].grow = customRedPlumGrow