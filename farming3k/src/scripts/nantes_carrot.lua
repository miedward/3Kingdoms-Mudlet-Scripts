-- Custom grow function for the nantes carrot
local function customNantesCarrotStart(self)
    Plant:fertilize("Alphabet fertilizer",35)
    Plant:aerate("Serinth air",105)
end

local function customNantesCarrotGrow(self)
    Plant:fertilize("Alphabet fertilizer",10)
    Plant:aerate("Serinth air",20)
end

-- Add instances of Plant to the table
plants["nantes carrot"] = Plant:new("nantes carrot")
-- Assign the custom grow function to the "nantes carrot" instance
plants["nantes carrot"].start = customNantesCarrotStart
plants["nantes carrot"].grow = customNantesCarrotGrow