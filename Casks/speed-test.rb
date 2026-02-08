cask "speed-test" do
  version "1.2.0"
  sha256 "0d03da01016fed61eaa14e6323f7f8fe6ea4bd93dee8d3b5fae891cf1f9fcb3a"

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
