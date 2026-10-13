cask "pullr" do
  version "1.1.2"
  sha256 "5745140ea7205516bfb76113d34fd01400925e3726dd014e3a17187d199301e9"

  url "https://github.com/Italian-seasoning/Pullr/releases/download/v#{version}/Pullr-#{version}-macOS.zip"
  name "Pullr"
  desc "Native media download queue"
  homepage "https://nolan-mac-apps.nolankrahn.chatgpt.site/apps/pullr"

  auto_updates true
  depends_on formula: ["yt-dlp", "ffmpeg", "deno"]
  depends_on macos: :sonoma

  app "Pullr.app"

  caveats <<~EOS
    Pullr is a preview release and is not Apple-notarized.
    Homebrew verifies the pinned SHA-256; macOS Gatekeeper checks remain enabled.
    If macOS blocks the first launch, review it in System Settings > Privacy & Security.
  EOS
end
