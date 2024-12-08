-- Custom grow function for the mandarin orange
local function customMandarinOrangeStart(self)
    Plant:aerate("Detroit air",175)
    Plant:water("mexico water",175)
    Plant:fertilize("Smurfy fertilizer",350)
end

local function customMandarinOrangeGrow(self)
    if (Farm.time > 1 ) then
        Plant:aerate("Detroit air",30)
        Plant:water("mexico water",30)
        Plant:fertilize("Smurfy fertilizer",60)
    end
end

-- Add instances of Plant to the table
plants["mandarin orange"] = Plant:new("mandarin orange")
-- Assign the custom grow function to the "mandarin orange" instance
plants["mandarin orange"].start = customMandarinOrangeStart
plants["mandarin orange"].grow = customMandarinOrangeGrow