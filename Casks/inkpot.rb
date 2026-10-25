cask "inkpot" do
  version "0.18.0"
  sha256 "1d26c1284a9f91ea22f49f998a563f5f5d775b552ab0b74088cd8bb97bdca7b9"

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
