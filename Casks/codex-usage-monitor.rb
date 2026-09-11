cask "codex-usage-monitor" do
  version "3.1.0"
  sha256 "1735d5d55b4a5a94926e8cb763ede59a30d9f309bd91c52fff2ad3d43850a137"

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
