cask "capso" do
  version "0.1.7"
  sha256 "fdd5f5ef689667588996672ede1f8c3e2502896ee65f88fa4c6bc949e4d2e0b4"

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
