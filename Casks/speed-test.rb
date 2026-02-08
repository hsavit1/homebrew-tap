cask "speed-test" do
  version "1.2.0"
  sha256 "d971ad0ba27a41126f5c10f3bd4005b649e32153b53625b936af1029a708cdbc"

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
