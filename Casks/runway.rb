cask "runway" do
  version "4.0.9"
  sha256 "622940d229d57778cfc3138c643ab4cb644ce76ed74418a2908f15a8b2781cf8"

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
