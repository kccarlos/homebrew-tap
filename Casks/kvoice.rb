cask "kvoice" do
  version "0.1.6"
  sha256 "8ceb981973dfa3f81be4016796defb15e1cb69925bc75a703d2e30253463e4bc"

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
