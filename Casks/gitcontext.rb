cask "gitcontext" do
  version "2.4.1"
  sha256 "7e1c029f5db96ee9a44eaa2e7fc1c199dcbd2d91a31562f1b84d0edf9edf3e54"

  url "https://github.com/kccarlos/gitcontext/releases/download/v#{version}/GitContext_#{version}_universal.dmg"
  name "GitContext"
  desc "Package Git diffs and code into LLM-ready context, fully offline"
  homepage "https://github.com/kccarlos/gitcontext"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "GitContext.app"

  uninstall quit: "xyz.gitcontext.desktop"

  zap trash: [
    "~/Library/Application Support/xyz.gitcontext.desktop",
    "~/Library/Caches/xyz.gitcontext.desktop",
    "~/Library/Preferences/xyz.gitcontext.desktop.plist",
    "~/Library/Saved Application State/xyz.gitcontext.desktop.savedState",
    "~/Library/WebKit/xyz.gitcontext.desktop",
  ]
end
