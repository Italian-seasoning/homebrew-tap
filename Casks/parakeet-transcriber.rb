cask "parakeet-transcriber" do
  version "1.0"
  sha256 "93878471518401e3684cc0febbe9f9b19912d8b49c0439a9cc695ab931e8020e"

  url "https://github.com/Italian-seasoning/ParakeetTranscriber/releases/download/v#{version}/Parakeet-Transcriber-#{version}.zip"
  name "Parakeet Transcriber"
  desc "Local transcription frontend for MacParakeet"
  homepage "https://github.com/Italian-seasoning/ParakeetTranscriber"

  auto_updates true
  depends_on arch: :arm64
  depends_on formula: "moona3k/tap/macparakeet-cli"
  depends_on macos: :sonoma

  app "Parakeet Transcriber.app"

  caveats <<~EOS
    Parakeet Transcriber is ad-hoc signed and not Apple-notarized.
    Install this cask with --no-quarantine so macOS can launch it.
  EOS
end
