-- Custom grow function for the boysenberry
local function customBoysenberryStart(self)
    Plant:fertilize("Alphabet fertilizer",35)
    Plant:water("wayhaven water",70)
    Plant:fertilize("Smurfy fertilizer",40)
    Plant:fertilize("Hippie fertilizer",40)
end

local function customBoysenberryGrow(self)
    Plant:fertilize("Hippie fertilizer",20)
    Plant:fertilize("Smurfy fertilizer",20)
    Plant:water("wayhaven water",10)
    Plant:fertilize("Happy Ed's fertilizer",10)
end

-- Add instances of Plant to the table
plants["boysenberry"] = Plant:new("boysenberry")
-- Assign the custom grow function to the "boysenberry" instance
plants["boysenberry"].start = customBoysenberryStart
plants["boysenberry"].grow = customBoysenberryGrow