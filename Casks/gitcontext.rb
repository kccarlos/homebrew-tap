cask "gitcontext" do
  version "2.4.2"
  sha256 "fd622657aeee7de91de96b7389cdbfda52368af42cc72527a33f649468d98fdb"

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
