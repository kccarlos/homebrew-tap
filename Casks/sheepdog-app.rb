# Homebrew cask template for kccarlos/homebrew-tap (Casks/sheepdog-app.rb).
# Rendered by packaging/homebrew/render.sh --cask from the release's
# checksums.txt after Sheepdog.app has been signed, notarized and stapled
# (the homebrew job in .github/workflows/release.yml). The placeholders are
# v0.1.22, 0.1.22 (the tag without its "v" and any pre-release suffix, what
# scripts/release-sign-app.sh puts in the zip's name) and the zip's sha256.
# The token is sheepdog-app because the formula already is `sheepdog`.
cask "sheepdog-app" do
  version "0.1.22"
  sha256 "5eccfdb82594e45c51744ddf8569ed14599e70a049cdd1fffafdcaac63a7afe0"

  url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.22/Sheepdog-#{version}-macos.zip"
  name "Sheepdog"
  desc "Menu-bar app for talking to your coding agents (the Mac client of sheepdog)"
  homepage "https://github.com/kccarlos/herdr-sheepdog"

  # The repository also tags the iPhone app (ios-v*); only v* are daemon and
  # Mac app releases.
  livecheck do
    url "https://github.com/kccarlos/herdr-sheepdog.git"
    regex(/^v(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sheepdog.app"

  # `brew upgrade` quits the running app before it swaps the bundle and,
  # when it quit one, opens the new version afterwards (a fresh install never
  # launches it). Without this a menu-bar app keeps the old code and icon in
  # memory until the user relaunches it by hand. The quit runs from the
  # cask being replaced, so it first applies on the upgrade after this one.
  uninstall quit: "com.github.kccarlos.herdr-sheepdog-mac"

  zap trash: [
    "~/Library/Caches/com.github.kccarlos.herdr-sheepdog-mac",
    "~/Library/Preferences/com.github.kccarlos.herdr-sheepdog-mac.plist",
    "~/Library/Saved Application State/com.github.kccarlos.herdr-sheepdog-mac.savedState",
  ]

  caveats <<~EOS
    Sheepdog.app is the microphone and menu-bar side of sheepdog; the daemon
    does the work. If you have not installed it:
      brew install kccarlos/tap/sheepdog
      sheepdog setup
  EOS
end
