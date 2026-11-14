cask "agent-kanban" do
  version "0.1.4"
  sha256 "4d1b57ff40554e8debc53f0f3211a30094a08d73cc5396b6e3d2cfcd32e70296"

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
