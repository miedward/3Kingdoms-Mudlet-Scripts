-- Custom grow function for the navel orange
local function customNavelOrangeStart(self)
    Plant:aerate("Serinth air",35)
    Plant:fertilize("Alphabet fertilizer",35)
end

local function customNavelOrangeGrow(self)
    Plant:aerate("Serinth air",20)
    Plant:fertilize("Alphabet fertilizer",20)
end

-- Add instances of Plant to the table
plants["navel orange"] = Plant:new("navel orange")
-- Assign the custom grow function to the "navel orange" instance
plants["navel orange"].start = customNavelOrangeStart
plants["navel orange"].grow = customNavelOrangeGrow