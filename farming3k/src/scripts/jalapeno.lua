-- Custom grow function for the jalapeno pepper
local function customJalapenoPepperStart(self)
    Plant:water("wayhaven water",35)
    Plant:fertilize("Happy Ed's fertilizer",35)
    Plant:fertilize("Hippie fertilizer",35)
    Plant:aerate("Detroit air",35)
end

local function customJalapenoPepperGrow(self)
    Plant:water("wayhaven water",20)
    Plant:fertilize("Happy Ed's fertilizer",20)
    Plant:fertilize("Hippie fertilizer",20)
    Plant:aerate("Detroit air",20)
end

-- Add instances of Plant to the table
plants["jalapeno pepper"] = Plant:new("jalapeno pepper")
-- Assign the custom grow function to the "jalapeno pepper" instance
plants["jalapeno pepper"].start = customJalapenoPepperStart
plants["jalapeno pepper"].grow = customJalapenoPepperGrow