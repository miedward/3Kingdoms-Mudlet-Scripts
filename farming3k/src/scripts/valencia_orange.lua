-- Custom grow function for the valencia orange
local function customValenciaOrangeStart(self)
    Plant:fertilize("Smurfy fertilizer",35)
end

local function customValenciaOrangeGrow(self)
    Plant:fertilize("Smurfy fertilizer",20)
end

-- Add instances of Plant to the table
plants["valencia orange"] = Plant:new("valencia orange")
-- Assign the custom grow function to the "valencia orange" instance
plants["valencia orange"].start = customValenciaOrangeStart
plants["valencia orange"].grow = customValenciaOrangeGrow