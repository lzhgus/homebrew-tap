cask "capso" do
  version "0.5.0"
  sha256 "a37e2b8a77d614ee6d270a9b1a867e624bc318b58976f36693d8acf4fd3b61d3"

  url "https://github.com/lzhgus/Capso/releases/download/v#{version}/Capso-#{version}.dmg"
  name "Capso"
  desc "Open-source screenshot and screen recording for macOS"
  homepage "https://github.com/lzhgus/Capso"

  depends_on macos: ">= :sequoia"

  app "Capso.app"

  zap trash: [
    "~/Library/Preferences/com.awesomemacapps.capso.plist",
  ]
end
