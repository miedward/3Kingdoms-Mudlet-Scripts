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
    send("exa ground")
    send("exa insects")
    send("exa mushrooms")
    send("exa weeds")
    send("glance")
end

-- Define the grow function
function Plant:grow()
    send("exa ground")
    send("exa insects")
    send("exa mushrooms")
    send("exa weeds")
    send("glance")
end

-- Define the harvest function
function Plant:harvest()
    send("harvest plant")
    send("get all")
    send("stash all")
end

function Plant:aerate(what, Units)
    local amt, sub
    while Units > 0 do
       amt, sub = Calc_amount(Units)
       send(string.format("aerate %s %s", amt, what))
       Units = Units - sub
    end
  end
  
  function Plant:fertilize(what, Units)
    local amt, sub
    while Units > 0 do
       amt, sub = Calc_amount(Units)
       send(string.format("fertilize %s %s", amt, what))
       Units = Units - sub
    end
  end
  
  function Plant:spread(what, Units)
    local amt, sub
    while Units > 0 do
       amt, sub = Calc_amount(Units)
       send(string.format("spread %s %s", amt, what))
       Units = Units - sub
    end
  end
  
  function Plant:spray(what, Units)
    local amt, sub
    while Units > 0 do
       amt, sub = Calc_amount(Units)
       send(string.format("spray %s %s", amt, what))
       Units = Units - sub
    end
  end
  
  function Plant:water(what, Units)
    local amt, sub
    while Units > 0 do
       amt, sub = Calc_amount(Units)
       send(string.format("water %s %s", amt, what	))
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
      return "little", 10
    end
  end

  function Plant:cleanplot_amish()
    spray("Hunch pesticide",140)
    spray("murus faralain pesticide",70)
    spray("mount perplexus pesticide",105)
    spray("ant cave pesticide",140)
    send("jab type I nutriometer")
    send("jab type I nutriometer")
    send("jab type I nutriometer")
    send("jab type I nutriometer")
    send("jab type II nutriometer")
    send("jab type II nutriometer")
    send("jab type II nutriometer")
    send("jab type II nutriometer")
    send("jab type III nutriometer")
    send("jab type III nutriometer")
    send("jab type III nutriometer")
    send("jab type III nutriometer")
    send("jab type IV nutriometer")
    send("jab type IV nutriometer")
    send("jab type IV nutriometer")
    send("jab type IV nutriometer")
    send("cantilever type I contristometer")
    send("cantilever type I contristometer")
    send("cantilever type I contristometer")
    send("cantilever type I contristometer")
    send("cantilever type II contristometer")
    send("cantilever type II contristometer")
    send("cantilever type II contristometer")
    send("cantilever type II contristometer")
    send("cantilever type III contristometer")
    send("cantilever type III contristometer")
    send("cantilever type III contristometer")
    send("cantilever type III contristometer")
    send("cantilever type IV contristometer")
    send("cantilever type IV contristometer")
    send("cantilever type IV contristometer")
    send("cantilever type IV contristometer")
    send("feed red goblin")
    send("feed red goblin")
    send("feed red goblin")
    send("feed red goblin")
    send("feed blue goblin")
    send("feed blue goblin")
    send("feed blue goblin")
    send("feed blue goblin")
    send("feed blue goblin")
    send("feed blue goblin")
    send("feed blue goblin")
    send("feed blue goblin")
    send("feed green goblin")
    send("feed green goblin")
    send("feed green goblin")
    send("feed green goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("feed orange goblin")
    send("push hygrometer button")
    send("push hygrometer button")
    send("push hygrometer button")
    send("push hygrometer button")
    send("push hygrometer button")
    send("push hygrometer button")
    send("push hygrometer button")
    send("push hygrometer button")
    send("push hygrometer button")
    send("push hygrometer button")
    send("push hygrometer button")
    send("depress oximeter button")
    send("depress oximeter button")
    send("depress oximeter button")
    send("depress oximeter button")
    send("depress oximeter button")
    send("depress oximeter button")
    send("depress oximeter button")
    send("depress oximeter button")
    send("depress oximeter button")
    send("depress oximeter button")
  end
    

-- Create a table of plants
plants = {}