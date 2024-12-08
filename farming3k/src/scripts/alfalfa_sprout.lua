-- Custom grow function for the alfalfa sprout
local function customAlfalfaSproutStart(self)
    Plant:water("wayhaven water",105)
    Plant:fertilize("Hippie fertilizer",105)
end

local function customAlfalfaSproutGrow(self)
    if (Farm.time == 3 or Farm.time == 5 ) then
        Plant:water("wayhaven water",35)
        Plant:fertilize("Hippie fertilizer",5)
    end
end

-- Add instances of Plant to the table
plants["alfalfa sprout"] = Plant:new("alfalfa sprout")
-- Assign the custom grow function to the "alfalfa sprout" instance
plants["alfalfa sprout"].start = customAlfalfaSproutStart
plants["alfalfa sprout"].grow = customAlfalfaSproutGrow