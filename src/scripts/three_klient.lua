ThreeKlient = ThreeKlient or {}
ThreeKlient.ui = ThreeKlient.ui or {}

ThreeKlient.config = ThreeKlient.config or { user = "ThreeKlient" }
ThreeKlient.eventHandlers = {
    -- basic events
    {"ThreeKlientCharVitals", "ThreeKlient.ui.onVitalsUpdate", nil},
    -- ui handlers
    {"ThreeKlientLoaded", "ThreeKlient.ui.setup", nil},
    -- package events
    {"ThreeKlientInstalled", "ThreeKlient.ui.setup", nil},
    {"ThreeKlientUninstalled", "ThreeKlient.ui.tearDown", nil},
}

function ThreeKlient.registerEventHandlers()
    for i, v in ipairs(ThreeKlient.eventHandlers) do
        if v[3] == nil then
            local handlerID = registerAnonymousEventHandler(v[1], v[2])
            if handlerID then
                v[3] = handlerID
            else
                cecho(string.format("<red>Failed to register event handler: %s -> %s<reset>\n", v[1], v[2]))
            end
        end
    end
end

function ThreeKlient.deregisterEventHandlers()
    for i, v in ipairs(ThreeKlient.eventHandlers) do
        if v[3] ~= nil then
            killAnonymousEventHandler(v[3])
            v[3] = nil
        end
    end
end

local function onInstall(_, package)
    if string.lower(package) ~= "3klient" then
        return
    end
    ThreeKlient.registerEventHandlers()
    raiseEvent("ThreeKlientInstalled")
    cecho("<green>Installed 3Klient.<reset>\n")
end

local function onUninstall(_, package)
    if string.lower(package) ~= "3klient" then
        return
    end
    ThreeKlient.deregisterEventHandlers()
    raiseEvent("ThreeKlientUninstalled")
    cecho("<red>Uninstalled 3Klient.<reset>\n")
end

local function onProfileLoad()
    -- Check if UI script exists before proceeding
    if type(ThreeKlient.ui) ~= "table" then
        cecho("<red>ThreeKlient UI script is missing or not yet loaded. Deferring event registration.<reset>\n")
        tempTimer(1, onProfileLoad)  -- Retry in 1 second
        return
    end

    local success, err = pcall(ThreeKlient.registerEventHandlers)
    if success then
        raiseEvent("ThreeKlientLoaded")
        cecho("<green>Loaded 3Klient.<reset>\n")
    else
        cecho(string.format("<red>Error loading 3Klient: %s<reset>\n", err))
    end
end


registerNamedEventHandler(ThreeKlient.config.user, "ThreeKlientInstall", "sysInstall", onInstall)
registerNamedEventHandler(ThreeKlient.config.user, "ThreeKlientLoad", "sysLoadEvent", onProfileLoad)
registerNamedEventHandler(ThreeKlient.config.user, "ThreeKlientUninstall", "sysUninstall", onUninstall)
