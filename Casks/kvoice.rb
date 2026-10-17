cask "kvoice" do
  version "0.1.5"
  sha256 "0c1665f35d64d99d6c13949fef8e0f6583499777ef7b5feca84f971aa85775b5"

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
