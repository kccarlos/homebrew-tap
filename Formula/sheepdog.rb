# Homebrew formula template for kccarlos/homebrew-tap (Formula/sheepdog.rb).
# Rendered by packaging/homebrew/render.sh from the release's checksums.txt
# after the darwin tarball has been signed and notarized (the homebrew job
# in .github/workflows/release.yml). The placeholders are v0.1.11 and the two
# sha256 sums; Homebrew reads the version from the URL (an explicit
# `version` fails `brew audit --strict` as redundant).
class Sheepdog < Formula
  desc "Manage your coding agents by voice, away from the screen (herdr supervisor)"
  homepage "https://github.com/kccarlos/herdr-sheepdog"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.11/sheepdog_v0.1.11_darwin_arm64.tar.gz"
      sha256 "fb8a61e245c8368c187487d408349fb0050ea8b17d5ceba8e03733e8817783b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kccarlos/herdr-sheepdog/releases/download/v0.1.11/sheepdog_v0.1.11_linux_amd64.tar.gz"
      sha256 "2ca36c8371507885b7b56ef4d42779408a222feb2d1e0fb20cab2f4fa2e0a3ff"
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
