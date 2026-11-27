cask "headroom-bar" do
  version "0.1.1"
  sha256 "bc1d6b9b87868becb41c04f546bead09d1b267d125957919adebbe4bb6f522a8"

  url "https://github.com/jasherjoshuachan/headroom-bar/releases/download/v#{version}/Headroom-#{version}.zip"
  name "Headroom"
  desc "Menu bar app showing how much of your AI plans you have left"
  homepage "https://github.com/jasherjoshuachan/headroom-bar"

  depends_on macos: :sonoma

  app "Headroom.app"

  uninstall quit: "io.github.jasherjoshuachan.headroom"

  zap trash: [
    "~/.config/headroom",
    "~/.cache/headroom",
  ]
end
