-- Custom grow function for the orange pepper
local function customOrangePepperStart(self)
    Plant:aerate("Detroit air",70)
    Plant:fertilize("Happy Ed's fertilizer",70)
end

local function customOrangePepperGrow(self)
    Plant:fertilize("Happy Ed's fertilizer",20)
    Plant:aerate("Detroit air",20)
end

-- Add instances of Plant to the table
plants["orange pepper"] = Plant:new("orange pepper")
-- Assign the custom grow function to the "orange pepper" instance
plants["orange pepper"].start = customOrangePepperStart
plants["orange pepper"].grow = customOrangePepperGrow