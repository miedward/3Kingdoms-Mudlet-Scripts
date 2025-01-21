print("\n" .."active: " .. tostring(walker_active) .. " killing: " .. tostring(walker_killing) .. "\n")
if stepperBot.handlerID.promptTempRegex then 
  print( "Killing active trigger" .. stepperBot.handlerID.promptTempRegex .. "\n")
  killTrigger(stepperBot.handlerID.promptTempRegex)
  stepperBot.handlerID.promptTempRegex = nil
end
if walker_active then 
  if ( not walker_killing ) then
    if (stepperBot.handlerID.walkerPaul) then
      print("\nAdding temp trigger to call " .. stepperBot.handlerID.walkerPaul .. "\n")
    end
    stepperBot.handlerID.promptTempRegex = tempRegexTrigger("^>$", [[raiseEvent("walkerPaul")]], 1)
  end
end -- if

walker_roomPlayers = 0
walker_mobs = {}
