cask "speed-test" do
  version "1.1.0"
  sha256 "b8bb04b6d23f5b62279dc77d0689364c1ae3c74e207fca7d354e9c7899a0ebde"

  url "https://github.com/hsavit1/SpeedTest/releases/download/v#{version}/SpeedTest-v#{version}.dmg"
  name "Speed Test"
  desc "Native macOS widget to measure download speed"
  homepage "https://speedtest-widget.fly.dev"

  depends_on macos: ">= :sonoma"

  app "Speed Test.app"

  zap trash: [
    "~/Library/Preferences/com.speedtest.app.plist",
    "~/Library/Caches/com.speedtest.app",
  ]
end
