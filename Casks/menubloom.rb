cask "menubloom" do
  version "0.5.3"
  sha256 "26c232b0c79ee3844d9bb0dfce72cffeb7fd611b7bb4111fd5c7ed37f2019e88"

  url "https://github.com/lzhgus/menubloom/releases/download/v#{version}/menubloom-#{version}.dmg"
  name "Menubloom"
  desc "Finder right-click menu with New File, Copy Path, Cut & Paste and more"
  homepage "https://menubloom.lzhgus.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Menubloom.app"

  uninstall quit: "io.github.lzhgus.menubloom"
end
