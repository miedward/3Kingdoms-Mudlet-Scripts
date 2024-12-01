
-- Custom grow function for the red pepper
local function customRedPepperStart(self)
    self:fertilize("Hippie fertilizer",35)
end

local function customRedPepperGrow(self)
    fertilize("Hippie fertilizer",40)
end

-- Add instances of Plant to the table
plants["red pepper"] = Plant:new("Red Pepper")
-- Assign the custom grow function to the "red pepper" instance
plants["red pepper"].start = customRedPepperStart
plants["red pepper"].grow = customRedPepperGrow
