-- Define the Plant class-like instance
Plant = {}
Plant.__index = Plant

-- Constructor for Plant
function Plant:new(name)
    local instance = setmetatable({}, Plant)
    instance.name = name
    instance.health = 0
    return instance
end

-- Define the start function
function Plant:start()
    print(self.name .. " has started growing as a sprout.")
end

-- Define the grow function
function Plant:grow()
    if self.health >= 25 then
        print(self.name .. " is healthy.")
    else
        print(self.name .. " is dying.")
    end
end

-- Define the harvest function
function Plant:harvest()
    if self.stage == "mature" then
        print(self.name .. " is harvested.")
        self.stage = "harvested"
    else
        print(self.name .. " cannot be harvested yet.")
    end
end

-- Create a table of plants
plants = {}