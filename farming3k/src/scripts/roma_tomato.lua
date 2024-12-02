-- Custom grow function for the roma tomato
local function customRomaTomatoStart(self)
    Plant:fertilize("Smurfy fertilizer",70)
    Plant:fertilize("Hippie fertilizer",70)
    Plant:water("mexico water",105)
    Plant:fertilize("Happy Ed's fertilizer",175)
    Plant:aerate("Genlab air",105)
end

local function customRomaTomatoGrow(self)
    Plant:fertilize("Smurfy fertilizer",30)
    Plant:water("mexico water",30)
end

-- Add instances of Plant to the table
plants["roma tomato"] = Plant:new("roma tomato")
-- Assign the custom grow function to the "roma tomato" instance
plants["roma tomato"].start = customRomaTomatoStart
plants["roma tomato"].grow = customRomaTomatoGrow