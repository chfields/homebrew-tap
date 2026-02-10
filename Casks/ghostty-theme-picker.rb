cask "ghostty-theme-picker" do
  version "1.3.0"
  sha256 "5df84b0af5a3a6fa7517ea642eb65064af7afa357b051a91e96ef620fdbbaf9a"

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
