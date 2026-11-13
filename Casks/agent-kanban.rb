cask "agent-kanban" do
  version "0.1.3"
  sha256 "1690c4dbe714f6880d520612faeeb0bfb0cbd8997c98689ac690b44dd9475fee"

  url "https://github.com/lzhgus/agent-kanban/releases/download/v#{version}/agent-kanban-#{version}.dmg"
  name "Agent Kanban"
  desc "Kanban board for coding agents, each task on its own git branch"
  homepage "https://agent-kanban.lzhgus.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Agent Kanban.app"

  uninstall quit: "io.github.lzhgus.agent-kanban"
end
