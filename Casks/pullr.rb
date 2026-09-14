cask "pullr" do
  version "1.1.0"
  sha256 "1717f36d7f4535275088b70509920e43a1b82b27f8d5e61c26ccead8ca2943cd"

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
