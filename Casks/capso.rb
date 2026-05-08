cask "capso" do
  version "0.7.1"
  sha256 "02f0f14bbe2e922b4a73d80df160a1496ea58b9595a6036e07b5ea52cb6518aa"

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
