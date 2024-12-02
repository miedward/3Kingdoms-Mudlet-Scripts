-- Custom grow function for the broccoli
local function customBroccoliStart(self)
    Plant:fertilize("Hippie fertilizer",105)
end

local function customBroccoliGrow(self)
    Plant:fertilize("Hippie fertilizer",105)
end

-- Add instances of Plant to the table
plants["broccoli"] = Plant:new("broccoli")
-- Assign the custom grow function to the "broccoli" instance
plants["broccoli"].start = customBroccoliStart
plants["broccoli"].grow = customBroccoliGrow