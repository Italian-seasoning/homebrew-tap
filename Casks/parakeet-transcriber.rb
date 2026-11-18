cask "parakeet-transcriber" do
  version "1.3.1"
  sha256 "33ea9b09c70401af5932c57b4240836fc3caa778e7253b83856caf166c0e2bdb"

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
