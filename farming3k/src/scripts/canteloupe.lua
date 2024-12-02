-- Custom grow function for the canteloupe
local function customCanteloupeStart(self)
    Plant:water("wayhaven water",70)
    Plant:fertilize("Happy Ed's fertilizer",70)
    Plant:fertilize("Hippie fertilizer",70)
end

local function customCanteloupeGrow(self)
    if (farm.time == 1) then
        Plant:water("wayhaven water",35)
        Plant:fertilize("Happy Ed's fertilizer",35)
        Plant:fertilize("Hippie fertilizer",20)
    else
        Plant:water("wayhaven water",20)
        Plant:fertilize("Happy Ed's fertilizer",20)
        Plant:fertilize("Hippie fertilizer",20)
    end
end

-- Add instances of Plant to the table
plants["canteloupe"] = Plant:new("canteloupe")
-- Assign the custom grow function to the "canteloupe" instance
plants["canteloupe"].start = customCanteloupeStart
plants["canteloupe"].grow = customCanteloupeGrow