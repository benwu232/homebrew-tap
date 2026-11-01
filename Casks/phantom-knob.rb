cask "phantom-knob" do
  version "2.4.1"
  sha256 "980ceeb48e1dffb123adfe8dd78a691f73e8f3c665c0ad7f84f3fb131d826313"

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
