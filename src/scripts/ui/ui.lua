ThreeKlient = ThreeKlient or {}
ThreeKlient.ui = ThreeKlient.ui or {}

function ThreeKlient.ui.setup()
  ThreeKlient.ui = ThreeKlient.ui or {}
  if not ThreeKlient.ui or not ThreeKlient.ui.setupVitals then
    cecho("<red>setupVitals() is not available yet, retrying in 1 second...<reset>\n")
    ThreeKlient.ui.setup()
    tempTimer(1, ThreeKlient.ui.setup) -- Retry in 1 second
    return
  end
  ThreeKlient.ui.setupVitals()
  ThreeKlient.ui.setupChat()
  ThreeKlient.ui.show()
  loadWindowLayout()
end

function ThreeKlient.ui.tearDown()
  saveWindowLayout()
  ThreeKlient.ui.hide()
  ThreeKlient.ui = nil
end

function ThreeKlient.ui.hide()
    local ui = ThreeKlient.ui
    ui.vitalsContainer:hide()
    ui.chatMonitor:hide()
  end

function ThreeKlient.ui.show()
  local ui = ThreeKlient.ui
  ui.vitalsContainer:show()
  ui.chatMonitor:show()
end
