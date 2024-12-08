-- Custom grow function for the yellow pepper
local function customYellowPepperStart(self)
    Plant:water("wayhaven water",80)
    Plant:aerate("Ryogi-Pei air",140)
    Plant:fertilize("Hippie fertilizer",80)
end

local function customYellowPepperGrow(self)
    if (Farm.time % 2 == 0 ) then
        Plant:water("wayhaven water",20)
        Plant:aerate("Ryogi-Pei air",35)
        Plant:fertilize("Hippie fertilizer",20)
    end
end

-- Add instances of Plant to the table
plants["yellow pepper"] = Plant:new("yellow pepper")
-- Assign the custom grow function to the "yellow pepper" instance
plants["yellow pepper"].start = customYellowPepperStart
plants["yellow pepper"].grow = customYellowPepperGrow