cask "inkpot" do
  version "0.13.0"
  sha256 "47a1a94b988b47619ce81b48bc1cb05c62642c7a911023e01c176c86554b9cc8"

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
