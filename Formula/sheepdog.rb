# Homebrew formula template for kccarlos/homebrew-tap (Formula/sheepdog.rb).
# Rendered by packaging/homebrew/render.sh from the release's checksums.txt
# after the darwin tarball has been signed and notarized (the homebrew job
# in .github/workflows/release.yml). The placeholders are v0.1.30 and the two
# sha256 sums; Homebrew reads the version from the URL (an explicit
# `version` fails `brew audit --strict` as redundant).
class Sheepdog < Formula
  desc "Manage your coding agents by voice, away from the screen (herdr supervisor)"
  homepage "https://github.com/kccarlos/herdr-sheepdog"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.30/sheepdog_v0.1.30_darwin_arm64.tar.gz"
      sha256 "afcd5c8ed8c79a5456dab5524e2e578c348195651109c2efb8007445578f74e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.30/sheepdog_v0.1.30_linux_amd64.tar.gz"
      sha256 "2f1e943ddb4653c0b3780286cf667a5959370cb6f5e706d1aca7ff7933bcc5bb"
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
