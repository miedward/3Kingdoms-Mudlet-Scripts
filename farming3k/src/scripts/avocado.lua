-- Custom grow function for the avocado
local function customAvocadoStart(self)
    Plant:water("wayhaven water",70)
    Plant:fertilize("Happy Ed's fertilizer",70)
    Plant:fertilize("Hippie fertilizer",45)
end

local function customAvocadoGrow(self)
    if (Farm.time == 3 or Farm.time == 5 ) then
        Plant:water("wayhaven water",20)
        Plant:fertilize("Happy Ed's fertilizer",20)
        Plant:fertilize("Hippie fertilizer",20)
    end
end

-- Add instances of Plant to the table
plants["avocado"] = Plant:new("avocado")
-- Assign the custom grow function to the "avocado" instance
plants["avocado"].start = customAvocadoStart
plants["avocado"].grow = customAvocadoGrow