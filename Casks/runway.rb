cask "runway" do
  version "4.0.3"
  sha256 "ac091206733f03efe426e99a1095678f46ba763aa0a67d5573a7d54e32972386"

  url "https://github.com/Italian-seasoning/CodexUsageMonitor/releases/download/v#{version}/CodexUsageMonitor-#{version}-macOS.zip"
  name "Runway"
  desc "Local Codex usage monitor with menu bar readings and widgets"
  homepage "https://nolan-mac-apps.nolankrahn.chatgpt.site/apps/codex-usage"

  auto_updates true
  depends_on macos: :sonoma

  app "CodexUsageMonitor.app"

  caveats <<~EOS
    Runway is a preview release and is not Apple-notarized.
    Homebrew verifies the pinned SHA-256; macOS Gatekeeper checks remain enabled.
    If macOS blocks the first launch, review it in System Settings > Privacy & Security.
  EOS
end
