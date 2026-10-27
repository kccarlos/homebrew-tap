# Homebrew formula template for kccarlos/homebrew-tap (Formula/sheepdog.rb).
# Rendered by packaging/homebrew/render.sh from the release's checksums.txt
# after the darwin tarball has been signed and notarized (the homebrew job
# in .github/workflows/release.yml). The placeholders are v0.1.7 and the two
# sha256 sums; Homebrew reads the version from the URL (an explicit
# `version` fails `brew audit --strict` as redundant).
class Sheepdog < Formula
  desc "Manage your coding agents by voice, away from the screen (herdr supervisor)"
  homepage "https://github.com/kccarlos/herdr-sheepdog"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.7/sheepdog_v0.1.7_darwin_arm64.tar.gz"
      sha256 "f65ef998410a481d484c8fe8d18d43cf7f97fa9ea8df04e93e18a73e7c389440"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.7/sheepdog_v0.1.7_linux_amd64.tar.gz"
      sha256 "b769339f4b900e15d0e3bff52889dfcc1f5172087a2d5e577beda0b2d5986ffa"
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
