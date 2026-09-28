cask "pullr" do
  version "1.1.1"
  sha256 "3d15c1b40c955e8035eaf6f18f639ed7f169ea79df1ac29e04652d30951699e2"

  url "https://github.com/Italian-seasoning/Pullr/releases/download/v#{version}/Pullr-#{version}-macOS.zip"
  name "Pullr"
  desc "Native, local-first media download queue"
  homepage "https://github.com/Italian-seasoning/Pullr"

  auto_updates true
  depends_on macos: :sonoma

  app "Pullr.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Pullr.app"]
  end

  caveats <<~EOS
    Pullr is not Apple-notarized.
    This cask removes macOS quarantine after verifying the pinned SHA-256.
  EOS
end
