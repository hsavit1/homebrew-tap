cask "speed-test" do
  version "1.2.0"
  sha256 "29fb1147ebde7ebad0d49e8dd9981ff12ceda6ff4e3390a03b1b050531d9dcba"

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
