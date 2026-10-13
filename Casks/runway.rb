cask "runway" do
  version "4.0.2"
  sha256 "cd3415bf6c7404d35be92a44d71ad846907628b119ba645a46b6d52f145e1621"

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
