triggerSprout = tempComplexRegexTrigger("sproutlingPlantTriggerTmp", "^A sproutling (.*) plant", [[
        local thisplant = matches[2]
        Farm:doFarmThings(thisplant)
    ]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
send("exa plant")