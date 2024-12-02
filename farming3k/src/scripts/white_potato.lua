-- Custom grow function for the white potato
local function customWhitePotatoStart(self)
    Plant:fertilize("Hippie fertilizer",35)
    Plant:water("wayhaven water",35)
end

local function customWhitePotatoGrow(self)
    Plant:fertilize("Hippie fertilizer",20)
    Plant:water("wayhaven water",20)
end

-- Add instances of Plant to the table
plants["white potato"] = Plant:new("white potato")
-- Assign the custom grow function to the "white potato" instance
plants["white potato"].start = customWhitePotatoStart
plants["white potato"].grow = customWhitePotatoGrow
