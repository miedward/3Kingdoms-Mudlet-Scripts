local MINUTES = 60
Deadman = Deadman or {}

local function resetDeadMan()
  deadmanStatus = true
    -- echo("Deadman reset\n")
  deleteNamedTimer("hsima", "deadman")
  registerNamedTimer("hsima", "deadman", 20*MINUTES, function()
    deadmanStatus = false
  end)
end

local function deadManEvent(eventName, commandSent)
  if commandSent == command then -- command holds the last command entered on the command line, unaltered by aliases etc
    resetDeadMan()
  -- else
    -- echo("Deadman not reset\n")
  end
end
function Deadman.registerHandlers()
  local charName = "hsima"
  charName = getCharacterName()
  if charName then
    registerNamedEventHandler(charName, "deadman", "sysDataSendRequest", deadManEvent)
  else
    registerNamedEventHandler("hsima", "deadman", "sysDataSendRequest", deadManEvent)
  end
end

Deadman.registerHandlers()
deadmanStatus = true