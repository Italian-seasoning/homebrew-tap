cask "codex-usage-monitor" do
  version "3.1.3"
  sha256 "2dd7567e3fa824d284d612801c7fe9599f415c59b58a079b75a2facd1043c521"

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
