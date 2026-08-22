cask "inkpot" do
  version "0.6.0"
  sha256 "b860ab5f267cc7dae5cb8d5c4c8aaa06f32fd4422c5ce1056029c7c7d8328fb5"

  url "https://github.com/thombruce/inkpot/releases/download/v#{version}/inkpot_#{version}_universal.dmg"
  name "inkpot"
  desc "Plain-text prose format and desktop editor"
  homepage "https://github.com/thombruce/inkpot"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "inkpot.app"

  zap trash: [
    "~/Library/Application Support/com.thombruce.inkpot",
    "~/Library/Caches/com.thombruce.inkpot",
    "~/Library/Preferences/com.thombruce.inkpot.plist",
    "~/Library/Saved Application State/com.thombruce.inkpot.savedState",
  ]
end
