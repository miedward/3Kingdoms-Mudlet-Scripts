-- Custom grow function for the peach
local function customPeachStart(self)
    Plant:fertilize("Happy Ed's fertilizer",80)
end

local function customPeachGrow(self)
    Plant:fertilize("Happy Ed's fertilizer",20)
end

-- Add instances of Plant to the table
plants["peach"] = Plant:new("peach")
-- Assign the custom grow function to the "peach" instance
plants["peach"].start = customPeachStart
plants["peach"].grow = customPeachGrow