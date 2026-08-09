cask "capso" do
  version "1.0.1"
  sha256 "f95da8e6d70e9fd050c21f13ec5fe35a747f0d15a4320fad37ef189f115a29f7"

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
