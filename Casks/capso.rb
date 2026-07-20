cask "capso" do
  version "0.9.6"
  sha256 "3e94e8075d3cc760c61377fefaf53d114a6494553cda40e71e1d3c79b28ec138"

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
