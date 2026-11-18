cask "parakeet-transcriber" do
  version "1.3"
  sha256 "87ffeca43d3a7dd47fcc7d04a494d11f5e84d3348d8ad38f5eee174b926be34a"

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
