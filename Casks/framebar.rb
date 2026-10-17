cask "framebar" do
  version "1.0.2"
  sha256 "813259391cab28cf29e0c23a0e410f0944a72a35254923331faa17828d7f1631"

  url "https://github.com/Italian-seasoning/FrameBar/releases/download/v#{version}/FrameBar-#{version}-macOS.zip"
  name "FrameBar"
  desc "Menu bar hardware monitor with a Roblox overlay"
  homepage "https://nolan-mac-apps.nolankrahn.chatgpt.site/apps/framebar"

  auto_updates true
  depends_on macos: :sonoma

  app "FrameBar.app"

  caveats <<~EOS
    FrameBar is a preview release and is not Apple-notarized.
    Homebrew verifies the pinned SHA-256; macOS Gatekeeper checks remain enabled.
    If macOS blocks the first launch, review it in System Settings > Privacy & Security.
    Screen Recording access is needed for game readings; hardware readings work without it.
  EOS
end
