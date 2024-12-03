-- Custom grow function for the zucchini
local function customZucchiniStart(self)
    echo("Keep gold level similar to start, might need to add more at low levels")
    echo("fertilize lots hippie fertilizer")
    send("la ground")
end

local function customZucchiniGrow(self)
    Plant:fertilize("Hippie fertilizer",80)
    send("la ground")

end

-- Add instances of Plant to the table
plants["zucchini"] = Plant:new("zucchini")
-- Assign the custom grow function to the "zucchini" instance
plants["zucchini"].start = customZucchiniStart
plants["zucchini"].grow = customZucchiniGrow