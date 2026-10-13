cask "parakeet-transcriber" do
  version "1.2"
  sha256 "deba8c1b2a24f6d745c2aba17577b55907b4fd06c3a53ec5ba12ddc4fee30628"

  url "https://github.com/Italian-seasoning/ParakeetTranscriber/releases/download/v#{version}/Parakeet-Transcriber-#{version}.zip"
  name "Parakeet Transcriber"
  desc "On-device transcription frontend for MacParakeet"
  homepage "https://nolan-mac-apps.nolankrahn.chatgpt.site/apps/parakeet"

  auto_updates true
  depends_on arch: :arm64
  depends_on formula: "moona3k/tap/macparakeet-cli"
  depends_on macos: :ventura

  app "Parakeet Transcriber.app"

  caveats <<~EOS
    Parakeet Transcriber is a preview release and is not Apple-notarized.
    Homebrew verifies the pinned SHA-256; macOS Gatekeeper checks remain enabled.
    If macOS blocks the first launch, review it in System Settings > Privacy & Security.
  EOS
end
