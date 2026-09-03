cask "capso" do
  version "1.1.1"
  sha256 "818e17128273d0e063a6523a7bb4352a5ae3700712e40ec414cc1e5d2884986b"

  url "https://github.com/lzhgus/Capso/releases/download/v#{version}/Capso-#{version}.dmg"
  name "Capso"
  desc "Open-source screenshot and screen recording for macOS"
  homepage "https://github.com/lzhgus/Capso"

  depends_on macos: :sequoia

  app "Capso.app"

  zap trash: [
    "~/Library/Preferences/com.awesomemacapps.capso.plist",
  ]
end
