cask "epicyclo" do
  version "1.0.6"
  sha256 "ef2ab2dba23a8e11f17a1abf3003a489ec710d6131b98a001ecd21b35822d308"

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
