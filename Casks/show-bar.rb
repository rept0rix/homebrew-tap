cask "show-bar" do
  version "2.0.2"
  sha256 "aef936ffd65070f31dffd1e827616ad930bf2efb26665f6c3f8b65244a7639a5"

  url "https://github.com/rept0rix/show-bar/releases/download/v#{version}/Show-Bar-#{version}.dmg"
  name "Show Bar"
  desc "Windows-style Command-Tab window switcher, Dock previews, snapping, and clipboard shelf"
  homepage "https://rept0rix.github.io/show-bar/"

  depends_on macos: ">= :sonoma"

  app "Show Bar.app"

  zap trash: [
    "~/Library/Application Support/ShowBar",
    "~/Library/Preferences/com.naoryanko.ShowBar.plist",
  ]
end
