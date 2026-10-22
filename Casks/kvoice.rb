cask "kvoice" do
  version "0.1.9"
  sha256 "42a3d92cd305f5beaa7bc591b3b8aeb5850721f215fcb7cddcdf3ca8c946a500"

  url "https://github.com/kccarlos/kvoice/releases/download/v#{version}/KVoice-#{version}.dmg"
  name "KVoice"
  desc "Dictation with on-device speech recognition and optional AI actions"
  homepage "https://github.com/kccarlos/kvoice"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "kvoice.app"

  uninstall quit: "io.github.kccarlos.kvoice"

  zap trash: [
    "~/Library/Application Support/kvoice",
    "~/Library/Caches/io.github.kccarlos.kvoice",
    "~/Library/HTTPStorages/io.github.kccarlos.kvoice",
    "~/Library/Preferences/io.github.kccarlos.kvoice.plist",
  ]
end
