local thisplant = matches[2]
if (plants[thisplant] ~= nil) then
  Farm.plant = Plant:new(thisplant)
else
  Farm.plant = plants[thisplant]
end
-- set temp triggers for ground conditions
-- send("exa ground")
send("stake claim")
Farm.plant:start()
send("grow plant")
Farm.time = 0