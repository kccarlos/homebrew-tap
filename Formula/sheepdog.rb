# Homebrew formula template for kccarlos/homebrew-tap (Formula/sheepdog.rb).
# Rendered by packaging/homebrew/render.sh from the release's checksums.txt
# after the darwin tarball has been signed and notarized (the homebrew job
# in .github/workflows/release.yml). The placeholders are v0.1.20 and the two
# sha256 sums; Homebrew reads the version from the URL (an explicit
# `version` fails `brew audit --strict` as redundant).
class Sheepdog < Formula
  desc "Manage your coding agents by voice, away from the screen (herdr supervisor)"
  homepage "https://github.com/kccarlos/herdr-sheepdog"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.20/sheepdog_v0.1.20_darwin_arm64.tar.gz"
      sha256 "926b4775d5c08d7af3da7b7361644eb40d74daa8db84f646608a9ab51425c286"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.20/sheepdog_v0.1.20_linux_amd64.tar.gz"
      sha256 "9432654495598f08f8a6b3a7112d694596ca28a72987829aa0a27a7e76e55065"
    end
  end

  def install
    bin.install "sheepdog"
  end

  def caveats
    <<~EOS
      sheepdog supervises agents running in herdr (https://github.com/herdrdev/herdr).
      Next steps:
        sheepdog demo              # try it without herdr (needs GEMINI_API_KEY)
        sheepdog setup             # set up keys, checks and start at login
        sheepdog doctor            # check the setup
        sheepdog service install   # run it at login
      After `brew upgrade`, run `sheepdog restart` (or it restarts itself when idle).
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sheepdog version")
  end
end
