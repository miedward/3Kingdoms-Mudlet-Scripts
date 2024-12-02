-- Custom grow function for the yellow bean
local function customYellowBeanStart(self)
    Plant:fertilize("Hippie fertilizer",35)
end

local function customYellowBeanGrow(self)
    Plant:fertilize("Hippie fertilizer",20)
end

-- Add instances of Plant to the table
plants["yellow bean"] = Plant:new("yellow bean")
-- Assign the custom grow function to the "yellow bean" instance
plants["yellow bean"].start = customYellowBeanStart
plants["yellow bean"].grow = customYellowBeanGrow