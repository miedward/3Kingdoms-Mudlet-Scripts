-- Custom grow function for the green apple
local function customGreenAppleStart(self)
    Plant:fertilize("Smurfy fertilizer",70) 
    Plant:fertilize("Hippie fertilizer",70)
    Plant:water("mexico water",105)
    Plant:fertilize("Happy Ed's fertilizer",175)
end

local function customGreenAppleGrow(self)
end

-- Add instances of Plant to the table
plants["green apple"] = Plant:new("green apple")
-- Assign the custom grow function to the "green apple" instance
plants["green apple"].start = customGreenAppleStart
plants["green apple"].grow = customGreenAppleGrow