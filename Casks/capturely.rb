cask "capturely" do
  version "0.1.1"
  sha256 "1d6b9c6a3450c8a17c9f2d853793c06b785c8db9db2d2567c557afaa481aa504"

  url "https://github.com/Italian-seasoning/Capturely/releases/download/v#{version}/Capturely-#{version}-macOS.zip"
  name "Capturely"
  desc "Native replay clipping for games"
  homepage "https://github.com/Italian-seasoning/Capturely"

  auto_updates true
  depends_on macos: :tahoe

  app "Capturely.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Capturely.app"]
  end

  caveats <<~EOS
    Capturely is not Apple-notarized.
    This cask removes macOS quarantine after verifying the pinned SHA-256.
  EOS
end
