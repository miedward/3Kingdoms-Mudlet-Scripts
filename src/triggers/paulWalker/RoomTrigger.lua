if stepperBot.handlerID.promptTempRegex then 
  killTrigger(stepperBot.handlerID.promptTempRegex)
  stepperBot.handlerID.promptTempRegex = nil
end
if walker_active then 
  if ( not walker_killing ) then
    stepperBot.handlerID.promptTempRegex = tempRegexTrigger("^>$", [[raiseEvent("walkerPaul")]], 1)
  end
end -- if

walker_roomPlayers = 0
walker_mobs = {}
