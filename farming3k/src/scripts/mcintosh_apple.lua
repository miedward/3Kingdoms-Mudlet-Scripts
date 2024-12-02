-- Custom grow function for the mcintosh apple
local function customMcIntoshAppleStart(self)
    Plant:fertilize("Happy Ed's fertilizer",70)
end

local function customMcIntoshAppleGrow(self)
    Plant:fertilize("Happy Ed's fertilizer",35)
end

-- Add instances of Plant to the table
plants["mcintosh apple"] = Plant:new("mcintosh apple")
-- Assign the custom grow function to the "mcintosh apple" instance
plants["mcintosh apple"].start = customMcIntoshAppleStart
plants["mcintosh apple"].grow = customMcIntoshAppleGrow