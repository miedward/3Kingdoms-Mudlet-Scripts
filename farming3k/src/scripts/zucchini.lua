-- Custom grow function for the zucchini
local function customZucchiniStart(self)
end

local function customZucchiniGrow(self)
    Plant:fertilize("Hippie fertilizer",175)
end

-- Add instances of Plant to the table
plants["zucchini"] = Plant:new("zucchini")
-- Assign the custom grow function to the "zucchini" instance
plants["zucchini"].start = customZucchiniStart
plants["zucchini"].grow = customZucchiniGrow