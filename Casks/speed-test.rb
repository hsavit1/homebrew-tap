cask "speed-test" do
  version "1.2.0"
  sha256 "e14cd2d38afb3025511fb6d6bd99e5cee7eb8926b123ceca94d7c130388cab9d"

  url "https://github.com/hsavit1/SpeedTest/releases/download/v#{version}/SpeedTest-v#{version}.dmg"
  name "Speed Test"
  desc "Native macOS widget to measure download speed"
  homepage "https://speedtest-widget.fly.dev"

  depends_on macos: ">= :sonoma"

  app "SpeedTest.app"

  zap trash: [
    "~/Library/Preferences/com.speedtest.app.plist",
    "~/Library/Caches/com.speedtest.app",
  ]
end
