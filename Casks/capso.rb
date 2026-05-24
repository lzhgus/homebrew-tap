cask "capso" do
  version "0.7.10"
  sha256 "83fe59a5a1547cf214465b18207c5a550f9a7b0e1d157507086f6e31c3f1a10b"

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
