cask "capso" do
  version "0.1.9"
  sha256 "b7722be0ebcd83a58a8757d0ade8f06d0dac362bb65ab2a5e9ab6fd6ffa4f598"

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
