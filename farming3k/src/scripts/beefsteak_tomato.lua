-- Custom grow function for the  beefsteak tomato
local function customBeefsteakTomatoStart(self)
    Plant:fertilize("Hippie fertilizer",35)
end

local function customBeefsteakTomatoGrow(self)
    Plant:fertilize("Hippie fertilizer",70)
end

-- Add instances of Plant to the table
plants["beefsteak tomato"] = Plant:new("beefsteak tomato")
-- Assign the custom grow function to the " beefsteak tomato" instance
plants["beefsteak tomato"].start = customBeefsteakTomatoStart
plants["beefsteak tomato"].grow = customBeefsteakTomatoGrow