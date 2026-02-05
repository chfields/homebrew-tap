cask "ghostty-theme-picker" do
  version "1.2.0"
  sha256 "2f05110e1d5988c18e71452ae3379a9d4a5d24b52337cff7f5babe0432e6e333"

  url "https://github.com/chfields/GhosttyThemePicker/releases/download/v#{version}/GhosttyThemePicker.dmg"
  name "Ghostty Theme Picker"
  desc "Menu bar app to launch Ghostty with random themes and manage workstreams"
  homepage "https://github.com/chfields/GhosttyThemePicker"

  depends_on macos: ">= :ventura"

  app "GhosttyThemePicker.app"

  zap trash: [
    "~/Library/Preferences/com.ghostty.themepicker.plist",
  ]

  caveats <<~EOS
    Ghostty Theme Picker requires Ghostty to be installed:
      brew install --cask ghostty

    This app is not signed with an Apple Developer certificate.
    On first launch, right-click the app and select "Open", or:
      System Settings → Privacy & Security → Click "Open Anyway"

    The Window Switcher (⌃⌥P) requires Screen Recording permission.
  EOS
end
