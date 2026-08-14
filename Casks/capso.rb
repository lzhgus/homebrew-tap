cask "capso" do
  version "1.0.2"
  sha256 "92141d9b8541b63de78a1a0de0c73e4aa20008b018c341ad084e3e1daf9290fb"

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
