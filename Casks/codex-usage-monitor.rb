cask "codex-usage-monitor" do
  version "3.0.4"
  sha256 "9bee6502cf2ed80d95175a027fd689a318f3b8db63d7dd12e7ec1a160d3b4d21"

  url "https://github.com/Italian-seasoning/CodexUsageMonitor/releases/download/v#{version}/CodexUsageMonitor-#{version}-macOS.zip"
  name "Codex Usage Monitor"
  desc "Native macOS Codex usage, model cost, and WidgetKit monitor"
  homepage "https://github.com/Italian-seasoning/CodexUsageMonitor"

  auto_updates true

  app "CodexUsageMonitor.app"
end
