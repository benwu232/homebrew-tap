cask "epicyclo" do
  version "1.0.1"
  sha256 "4d3991580ab8292f7a03dc86d5f4c0ddc14c073912c5b3a9be20b3628c93b006"

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
