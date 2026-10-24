cask "runway" do
  version "4.0.9"
  sha256 "c858c525ece38ec5393096f593cb2c2f096d844a5ff4e78a2eee17901e094158"

  url "https://github.com/Italian-seasoning/CodexUsageMonitor/releases/download/v#{version}/Runway-#{version}-macOS.zip"
  name "Runway"
  desc "Local Codex usage monitor with menu bar readings and widgets"
  homepage "https://italian-seasoning.github.io/CodexUsageMonitor/"

  auto_updates true
  depends_on macos: :sonoma

  app "Runway.app"

  caveats <<~EOS
    Runway is a preview release and is not Apple-notarized.
    Homebrew verifies the pinned SHA-256; macOS Gatekeeper checks remain enabled.
    If macOS blocks the first launch, review it in System Settings > Privacy & Security.
  EOS
end
