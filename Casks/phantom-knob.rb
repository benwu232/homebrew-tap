cask "phantom-knob" do
  version "2.2.13"
  sha256 "ce2b452359d2db74074c306f2a66289175946d79f239e307f96cf631eb605e26"

  url "https://github.com/benwu232/PhantomKnob/releases/download/v#{version}/PhantomKnob_v#{version}.dmg"
  name "Phantom Knob"
  desc "Virtual trackpad knob controller for macOS"
  homepage "https://github.com/benwu232/PhantomKnob"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "PhantomKnob.app"

  zap trash: [
    "~/Library/Application Support/PhantomKnob",
    "~/Library/Caches/com.phantomknob",
    "~/Library/Preferences/com.phantomknob.plist",
    "~/Library/Saved Application State/com.phantomknob.savedState",
  ]
end
