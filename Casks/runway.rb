cask "runway" do
  version "4.0.8"
  sha256 "47379b56fd32976e239f8c4f5910239a4ad3e1fb8172ab5929a948cecf3bc4ec"

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
