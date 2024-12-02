-- Custom grow function for the cauliflower
local function customCauliflowerStart(self)
    Plant:fertilize("Hippie fertilizer",105)
    Plant:water("mexico water",45)
end

local function customCauliflowerGrow(self)
    Plant:fertilize("Hippie fertilizer",55)
    Plant:water("mexico water",20)
end

-- Add instances of Plant to the table
plants["cauliflower"] = Plant:new("cauliflower")
-- Assign the custom grow function to the "cauliflower" instance
plants["cauliflower"].start = customCauliflowerStart
plants["cauliflower"].grow = customCauliflowerGrow