cask "pullr" do
  version "1.1.4"
  sha256 "0f234cfd176af86fa85adb94d72de787981c8003a9c92470f3ed392798b4bc88"

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
