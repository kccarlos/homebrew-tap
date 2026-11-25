# Homebrew formula template for kccarlos/homebrew-tap (Formula/sheepdog.rb).
# Rendered by packaging/homebrew/render.sh from the release's checksums.txt
# after the darwin tarball has been signed and notarized (the homebrew job
# in .github/workflows/release.yml). The placeholders are v0.1.31 and the two
# sha256 sums; Homebrew reads the version from the URL (an explicit
# `version` fails `brew audit --strict` as redundant).
class Sheepdog < Formula
  desc "Manage your coding agents by voice, away from the screen (herdr supervisor)"
  homepage "https://github.com/kccarlos/herdr-sheepdog"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.31/sheepdog_v0.1.31_darwin_arm64.tar.gz"
      sha256 "1dbb72e8e2d5c287e32eec5c7eb0e50a1a6b7fdb7ec26a5c0c31e75f9d6ef230"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.31/sheepdog_v0.1.31_linux_amd64.tar.gz"
      sha256 "9153b98ea263da78be2b0909cc54eb84e6a516a806fcdc85d7c3dccebedff2b4"
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
      `sheepdog update` upgrades it and restarts the running daemon in one step.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sheepdog version")
  end
end
