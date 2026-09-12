cask "codex-usage-monitor" do
  version "3.1.1"
  sha256 "024d95c593c5492f95c07893b22f0fdf5e3ea4f63f56b53a4d376c746ce3eed7"

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
