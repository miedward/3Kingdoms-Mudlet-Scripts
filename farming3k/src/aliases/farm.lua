local thisplant = matches[2]
Farm.plant = plants[thisplant]
-- set temp triggers for ground conditions
-- send("exa ground")
send("stake claim")
Farm.plant:start()
send("grow plant")
Farm.time = 0