cask "phantom-knob" do
  version "2.4.3"
  sha256 "03f6e5fb158c36147fe32ce74121d3f9d94e03acdb5fda076f4f72309b74bd93"

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
