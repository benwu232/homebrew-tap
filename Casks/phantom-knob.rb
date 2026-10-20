cask "phantom-knob" do
  version "2.3.6"
  sha256 "777da26b3ce2bcb9e1c2c1a174f278a0d586f1df0ff6724d137e4c23231fdff6"

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
