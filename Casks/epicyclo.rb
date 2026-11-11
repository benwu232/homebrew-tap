cask "epicyclo" do
  version "1.1.6"
  sha256 "caa6abdf55c21e12b652c5d5822d7a8c8365e2754dea26132849ead8e1a67cb7"

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
