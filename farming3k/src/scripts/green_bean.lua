-- Custom grow function for the green bean
local function customGreenBeanStart(self)
    Plant:fertilize("Smurfy fertilizer",35)
end

local function customGreenBeanGrow(self)
    Plant:fertilize("Smurfy fertilizer",35)
end

-- Add instances of Plant to the table
plants["green bean"] = Plant:new("green bean")
-- Assign the custom grow function to the "green bean" instance
plants["green bean"].start = customGreenBeanStart
plants["green bean"].grow = customGreenBeanGrow