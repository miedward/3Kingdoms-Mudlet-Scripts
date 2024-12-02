Farm = {}
Farm.plant = "none"
Farm.time = 0

function Farm:BuySupplies(win)
	local buy = "n"
    win = tonumber(win)
	if win == 1 then
  		buy = "y"
		send("buy A simple type I contristometer")
		send("buy A simple type II contristometer")
		send("buy A simple type III contristometer")
		send("buy A simple type IV contristometer")
		send("buy A cage holding a tiny blue goblin")
		send("buy A cage holding a tiny green goblin")
		send("buy A cage holding a tiny orange goblin")
		send("buy A cage holding a tiny red goblin")
		send("buy A Mark I Type I nutriometer")
		send("buy A Mark I Type II nutriometer")
		send("buy A Mark I Type III nutriometer")
		send("buy A Mark I Type IV nutriometer")
		send("buy A simple oximeter")
		send("buy A simple hygrometer")
	elseif win == 2 then
  		buy = "y"  
		send("buy A standard type I contristometer")
		send("buy A standard type II contristometer")
		send("buy A standard type III contristometer")
		send("buy A standard type IV contristometer")
		send("buy A cage holding a medium-sized blue goblin")  
		send("buy A cage holding a medium-sized green goblin") 
		send("buy A cage holding a medium-sized orange goblin") 
		send("buy A cage holding a medium-sized red goblin")
		send("buy A Mark II Type I nutriometer")  
		send("buy A Mark II Type II nutriometer")
		send("buy A Mark II Type III nutriometer")
		send("buy A Mark II Type IV nutriometer")  
		send("buy A standard oximeter")
		send("buy A standard hygrometer")  
	elseif win == 3 then
  		buy = "y"  
		send("buy A complex type I contristometer") 
		send("buy A complex type II contristometer")
		send("buy A complex type III contristometer")
		send("buy A complex type IV contristometer")
		send("buy A cage holding a large blue goblin")  
		send("buy A cage holding a large green goblin") 
		send("buy A cage holding a large orange goblin") 
		send("buy A cage holding a large red goblin")
		send("buy A Mark III Type I nutriometer")  
		send("buy A Mark III Type II nutriometer")
		send("buy A Mark III Type III nutriometer")
		send("buy A Mark III Type IV nutriometer")  
		send("buy A complex oximeter")
		send("buy A complex hygrometer")   
	else
		Note("Options are as followed:")
        Note("1 = Simple")
        Note("2 = Standard")
		Note("3 = Complex")
  		buy = "n"
  	end
	if buy == "y" then
	    send("buy A tank of Detroit air")
		send("buy A tank of Genlab air")                            
		send("buy A tank of Ryogi-Pei air")                         
		send("buy A tank of Serinth air") 
		send("buy A bag of Happy Ed's fertilizer") 
		send("buy A bag of alphabet fertilizer")  
		send("buy A bag of hippie fertilizer")   
		send("buy A bag of smurfy fertilizer") 
		send("buy A barrel of Burns brand neutralizer")  
		send("buy A barrel of Cowville neutralizer") 
		send("buy A barrel of Der'thalas neutralizer") 
		send("buy A barrel of Garou neutralizer")
		send("buy A barrel of Ant Cave pesticide")
		send("buy A barrel of Hunch pesticide")  
		send("buy A barrel of Mount Perplexus pesticide") 
		send("buy A barrel of Murus Faralain pesticide")
		send("buy A barrel of Gulf of Mexico water")   
		send("buy A barrel of R'lyeh water")   
		send("buy A barrel of Wayhaven water")   
		send("buy A conch filled with Atlantis water")
		send("get all")
	end
end