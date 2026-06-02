cask "trove" do
  version "1.5.33"
  sha256 "a6f02d804789002d822b123cd82baef28b860c8889cb4aad1a3a99cda8f4eba8"

  url "https://github.com/ArnavGoel03/trove/releases/download/v#{version}/Trove.dmg"
  name "Trove"
  desc "Local all-in-one Mac utility: clipboard, screen recorder, OCR, PDF, system monitor, disk cleanup"
  homepage "https://gettrove.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Note: the app is not yet Apple-notarized (no Developer ID). On first
  # launch Gatekeeper may require approval in System Settings > Privacy &
  # Security. The in-app Sparkle updater handles subsequent updates.
  depends_on macos: ">= :ventura"

  app "Trove.app"

  zap trash: [
    "~/Library/Application Support/Trove",
    "~/Library/Preferences/com.arnavgoel.trove.plist",
    "~/Library/Caches/com.arnavgoel.trove",
  ]
end
