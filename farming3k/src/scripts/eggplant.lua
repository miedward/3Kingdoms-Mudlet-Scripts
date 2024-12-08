-- Custom grow function for the eggplant
local function customEggplantStart(self)
    Plant:water("wayhaven water",70)
    Plant:fertilize("Happy Ed's fertilizer",70)
    Plant:fertilize("Hippie fertilizer",70)
end

local function customEggplantGrow(self)
    if (Farm.time == 3) then
        Plant:water("wayhaven water",20)
        Plant:fertilize("Happy Ed's fertilizer",20)
        Plant:fertilize("Hippie fertilizer",20)
    end
end

-- Add instances of Plant to the table
plants["eggplant"] = Plant:new("eggplant")
-- Assign the custom grow function to the "eggplant" instance
plants["eggplant"].start = customEggplantStart
plants["eggplant"].grow = customEggplantGrow