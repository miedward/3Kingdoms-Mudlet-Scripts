-- Custom grow function for the bosc pear
local function customBoscPearStart(self)
    Plant:water("r'lyeh water",70)
    Plant:aerate("Genlab air",105)
    Plant:fertilize("Hippie fertilizer",70)
end

local function customBoscPearGrow(self)
    Plant:aerate("Genlab air",20)
    Plant:fertilize("Smurfy fertilizer",20)
    Plant:water("r'lyeh water",20)
end

-- Add instances of Plant to the table
plants["bosc pear"] = Plant:new("bosc pear")
-- Assign the custom grow function to the "bosc pear" instance
plants["bosc pear"].start = customBoscPearStart
plants["bosc pear"].grow = customBoscPearGrow