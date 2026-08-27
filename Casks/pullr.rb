cask "pullr" do
  version "1.0.1"
  sha256 "a8ee82752d6a7684a986dc620825d93a560e0b256c1feec0fdfd5f35f14239d4"

  url "https://github.com/Italian-seasoning/Pullr/releases/download/v#{version}/Pullr-#{version}-macOS.zip"
  name "Pullr"
  desc "Native, local-first media download queue"
  homepage "https://github.com/Italian-seasoning/Pullr"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Pullr-#{version}.app", target: "Pullr.app"
end
