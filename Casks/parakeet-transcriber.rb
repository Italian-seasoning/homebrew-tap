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

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Parakeet Transcriber.app"]
  end

  caveats <<~EOS
    Parakeet Transcriber is ad-hoc signed and not Apple-notarized.
    This cask removes macOS quarantine after verifying the pinned SHA-256.
  EOS
end
