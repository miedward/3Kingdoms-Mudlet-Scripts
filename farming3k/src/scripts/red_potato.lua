-- Custom grow function for the red potato
local function customRedPotatoStart(self)
    Plant:fertilize("Alphabet fertilizer",70)
end

local function customRedPotatoGrow(self)
    Plant:fertilize("Alphabet fertilizer",10)
end

-- Add instances of Plant to the table
plants["red potato"] = Plant:new("red potato")
-- Assign the custom grow function to the "red potato" instance
plants["red potato"].start = customRedPotatoStart
plants["red potato"].grow = customRedPotatoGrow