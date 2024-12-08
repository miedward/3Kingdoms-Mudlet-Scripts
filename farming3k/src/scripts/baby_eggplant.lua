-- Custom grow function for the baby eggplant
local function custombabyEggplantStart(self)
    Plant:fertilize("Smurfy fertilizer",20)
    Plant:fertilize("Hippie fertilizer",20)
end

local function custombabyEggplantGrow(self)
    Plant:fertilize("Hippie fertilizer",20)
    Plant:fertilize("Smurfy fertilizer",20)
end

-- Add instances of Plant to the table
plants["baby eggplant"] = Plant:new("baby eggplant")
-- Assign the custom grow function to the "baby eggplant" instance
plants["baby eggplant"].start = custombabyEggplantStart
plants["baby eggplant"].grow = custombabyEggplantGrow