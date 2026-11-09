cask "epicyclo" do
  version "1.1.1"
  sha256 "802244137844f1529d5717fbc9556a2ff015f8d7d30945459cf40dd0045eca45"

  url "https://github.com/benwu232/epicyclo/releases/download/v#{version}/Epicyclo_v#{version}.dmg"
  name "Epicyclo"
  desc "Virtual rotary controller for macOS trackpad"
  homepage "https://github.com/benwu232/epicyclo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Epicyclo.app"

  zap trash: [
    "~/Library/Application Support/Epicyclo",
    "~/Library/Caches/com.benwu232.epicyclo",
    "~/Library/Preferences/com.benwu232.epicyclo.plist",
    "~/Library/Saved Application State/com.benwu232.epicyclo.savedState",
  ]
end
