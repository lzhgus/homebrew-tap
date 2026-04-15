cask "capso" do
  version "0.2.1"
  sha256 "d23cac7063bb628556d5e744980d1aa9b8928db2bd0f98c9a10250ce4f91dafc"

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
