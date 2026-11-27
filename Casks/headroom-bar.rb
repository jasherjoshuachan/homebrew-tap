cask "headroom-bar" do
  version "0.1.0"
  sha256 "f2f657c9d77cb109f1ac7f9c06ca30ad5a458c60756d95e54732c94ff85172ba"

  url "https://github.com/jasherjoshuachan/headroom-bar/releases/download/v#{version}/Headroom-#{version}.zip"
  name "Headroom"
  desc "Menu bar app showing how much of your AI plans you have left"
  homepage "https://github.com/jasherjoshuachan/headroom-bar"

  depends_on macos: ">= :sonoma"

  app "Headroom.app"

  zap trash: [
    "~/.config/headroom",
    "~/.cache/headroom",
  ]
end
