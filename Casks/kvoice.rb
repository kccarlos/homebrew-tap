cask "kvoice" do
  version "0.1.3"
  sha256 "296984ad85617d76e9a47b2f6e444146a5f5f0c7d661ca05290c3d850148479d"

  url "https://github.com/kccarlos/kvoice/releases/download/v#{version}/KVoice-#{version}.dmg"
  name "KVoice"
  desc "Dictation with on-device speech recognition and optional AI actions"
  homepage "https://github.com/kccarlos/kvoice"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "kvoice.app"

  uninstall quit: "io.github.kccarlos.kvoice"

  zap trash: [
    "~/Library/Application Support/kvoice",
    "~/Library/Caches/io.github.kccarlos.kvoice",
    "~/Library/HTTPStorages/io.github.kccarlos.kvoice",
    "~/Library/Preferences/io.github.kccarlos.kvoice.plist",
  ]
end
