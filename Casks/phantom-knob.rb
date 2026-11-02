cask "phantom-knob" do
  version "2.4.2"
  sha256 "31f32d42187b111b72f839e22980560064eaeca42a660562c12e0e6a85a89ae1"

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
