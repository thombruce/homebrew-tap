cask "inkpot" do
  version "0.14.0"
  sha256 "e53a83b9e9457482d2441374d89d3b44a06f5f0674d360f963b204bbdac99488"

  url "https://github.com/thombruce/inkpot/releases/download/v#{version}/inkpot_#{version}_universal.dmg"
  name "inkpot"
  desc "Plain-text prose format and desktop editor"
  homepage "https://github.com/thombruce/inkpot"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "inkpot.app"

  zap trash: [
    "~/Library/Application Support/com.thombruce.inkpot",
    "~/Library/Caches/com.thombruce.inkpot",
    "~/Library/Preferences/com.thombruce.inkpot.plist",
    "~/Library/Saved Application State/com.thombruce.inkpot.savedState",
  ]
end
