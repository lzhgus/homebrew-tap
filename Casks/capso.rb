cask "capso" do
  version "0.9.2"
  sha256 "0cd93114ae5fa9fdad9be0bb5b71d6a4dd0e0e215df55bc2a27c569ee709bd0a"

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
