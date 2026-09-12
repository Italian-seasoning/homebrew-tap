cask "capturely" do
  version "0.1.0"
  sha256 "d931faabe1f16fbadaa57ce73a79b79de3abeaee2e8bd11418cc04def1428f5d"

  url "https://github.com/Italian-seasoning/Capturely/releases/download/v#{version}/Capturely-#{version}-macOS.zip"
  name "Capturely"
  desc "Native macOS replay clipping for games"
  homepage "https://github.com/Italian-seasoning/Capturely"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Capturely.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Capturely.app"]
  end

  caveats <<~EOS
    Capturely is not Apple-notarized.
    This cask removes macOS quarantine after verifying the pinned SHA-256.
  EOS
end
