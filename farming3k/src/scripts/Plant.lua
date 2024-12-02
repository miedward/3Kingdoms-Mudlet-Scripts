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
    send("get all")
    send("stash all")
end

local function sne(stuff)
    send(stuff)
end

function Plant:aerate(what, Units)
    local amt, sub
    while Units > 0 do
       amt, sub = Calc_amount(Units)
       sne(string.format("aerate %s %s", amt, what))
       Units = Units - sub
    end
  end
  
  function Plant:fertilize(what, Units)
    local amt, sub
    while Units > 0 do
       amt, sub = Calc_amount(Units)
       sne(string.format("fertilize %s %s", amt, what))
       Units = Units - sub
    end
  end
  
  function Plant:spread(what, Units)
    local amt, sub
    while Units > 0 do
       amt, sub = Calc_amount(Units)
       sne(string.format("spread %s %s", amt, what))
       Units = Units - sub
    end
  end
  
  function Plant:spray(what, Units)
    local amt, sub
    while Units > 0 do
       amt, sub = Calc_amount(Units)
       sne(string.format("spray %s %s", amt, what))
       Units = Units - sub
    end
  end
  
  function Plant:water(what, Units)
    local amt, sub
    while Units > 0 do
       amt, sub = Calc_amount(Units)
       sne(string.format("water %s %s", amt, what	))
       Units = Units - sub
    end
  end
  
  function Calc_amount(Units)
    if Units >= 35 then
      return "lots", 35
    elseif Units >= 20 then
      return "some", 20
    elseif Units == 10 then
      return "little", 10
    else 
      echo("!!!!!!!!!Less than 10 units, using little.!!!!!!!!!")
      return "little", 10
    end
  end


-- Create a table of plants
plants = {}