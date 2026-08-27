cask "codex-usage-monitor" do
  version "3.0.4"
  sha256 "9bee6502cf2ed80d95175a027fd689a318f3b8db63d7dd12e7ec1a160d3b4d21"

  url "https://github.com/Italian-seasoning/CodexUsageMonitor/releases/download/v#{version}/CodexUsageMonitor-#{version}-macOS.zip"
  name "Codex Usage Monitor"
  desc "Codex usage, model cost, and WidgetKit monitor"
  homepage "https://github.com/Italian-seasoning/CodexUsageMonitor"

  auto_updates true
  depends_on macos: :sonoma

  app "CodexUsageMonitor.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/CodexUsageMonitor.app"]
  end

  caveats <<~EOS
    Codex Usage Monitor is not Apple-notarized.
    This cask removes macOS quarantine after verifying the pinned SHA-256.
  EOS
end
