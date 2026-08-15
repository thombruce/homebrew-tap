cask "inkpot" do
  version "0.1.0"
  # TODO: replace :no_check with the universal dmg's sha256 once v0.1.0 is
  # released (shasum -a 256 on the downloaded .dmg).
  sha256 :no_check

  # Verify the exact asset name against the first release; Tauri builds the
  # universal target as "<productName>_<version>_universal.dmg".
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
