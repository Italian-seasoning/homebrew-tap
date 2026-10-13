cask "framebar" do
  version "1.0.1"
  sha256 "1478e217093a0a28108746ca37b06bfd028cfb5bb361133120918af167f3fae3"

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
