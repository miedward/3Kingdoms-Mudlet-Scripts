-- Custom grow function for the snap pea
local function customSnapPeaStart(self)
    Plant:water("r'lyeh water",30)
    Plant:fertilize("Happy Ed's fertilizer",20)
    Plant:fertilize("Hippie fertilizer",35)
    Plant:fertilize("Smurfy fertilizer",35)
    Plant:aerate("Serinth air",50)
    Plant:spray("Hunch pesticide",10)
end

local function customSnapPeaGrow(self)
    Plant:water("r'lyeh water",30)
    Plant:fertilize("Happy Ed's fertilizer",20)
    Plant:fertilize("Hippie fertilizer",35)
    Plant:fertilize("Smurfy fertilizer",35)
    Plant:aerate("Serinth air",50)
    Plant:spray("Hunch pesticide",10)
end

-- Add instances of Plant to the table
plants["snap pea"] = Plant:new("snap pea")
-- Assign the custom grow function to the "snap pea" instance
plants["snap pea"].start = customSnapPeaStart
plants["snap pea"].grow = customSnapPeaGrow