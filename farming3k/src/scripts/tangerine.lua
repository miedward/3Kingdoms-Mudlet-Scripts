-- Custom grow function for the tangerine
local function customTangerineStart(self)
    Plant:aerate("Ryogi-Pei air",140)
    Plant:water("wayhaven water",140)
end

local function customTangerineGrow(self)
    Plant:fertilize("Hippie fertilizer",140)
end

-- Add instances of Plant to the table
plants["tangerine"] = Plant:new("tangerine")
-- Assign the custom grow function to the "tangerine" instance
plants["tangerine"].start = customTangerineStart
plants["tangerine"].grow = customTangerineGrow