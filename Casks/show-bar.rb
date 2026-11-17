cask "show-bar" do
  version "2.0.3"
  sha256 "4aa418d0757af9213f010a4bd830ab74183595377d6a7e690acff051e5a073e2"

  url "https://github.com/rept0rix/show-bar/releases/download/v#{version}/Show-Bar-#{version}.dmg"
  name "Show Bar"
  desc "Windows-style Command-Tab window switcher, Dock previews, snapping, and clipboard shelf"
  homepage "https://rept0rix.github.io/show-bar/"

  depends_on macos: :sonoma

  app "Show Bar.app"

  zap trash: [
    "~/Library/Application Support/ShowBar",
    "~/Library/Preferences/com.naoryanko.ShowBar.plist",
  ]
end
