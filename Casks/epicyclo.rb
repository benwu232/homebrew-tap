cask "epicyclo" do
  version "1.0.5"
  sha256 "affcfc9bb49a1babd9b5d29d913aebc10437010c977ae05e6bbbd0ff71532825"

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
