# Homebrew tap for kccarlos

Free, open-source apps by [kccarlos](https://github.com/kccarlos), installable with Homebrew.

| App | What it does | Install |
| --- | --- | --- |
| [KVoice](https://github.com/kccarlos/kvoice) | Hold a shortcut, speak, and get finished text in any Mac app, transcribed on your Mac, with optional AI actions to polish, summarize or translate. | `brew install --cask kccarlos/tap/kvoice` |
| [GitContext](https://github.com/kccarlos/gitcontext) | Package Git diffs and code into LLM-ready context, fully offline. | `brew install --cask kccarlos/tap/gitcontext` |
| [sheepdog](https://github.com/kccarlos/herdr-sheepdog) | Manage coding agents running in herdr by voice, away from the screen. | `brew install kccarlos/tap/sheepdog` |

Each cask and formula is updated automatically when its app publishes a new release, and
installs the same build as that app's GitHub Releases page.

## KVoice

```sh
brew install --cask kccarlos/tap/kvoice
```

Requires a Mac with Apple silicon and macOS 15 or later.
Issues belong in the [KVoice repository](https://github.com/kccarlos/kvoice/issues).

## GitContext

```sh
brew install --cask kccarlos/tap/gitcontext
```

The macOS build is a universal app. GitContext also runs on the web at
[kccarlos.github.io/gitcontext](https://kccarlos.github.io/gitcontext/), and has Windows and Linux builds (`.msi`/`.exe`,
`.deb`, `.rpm`, `.AppImage`) on its
[GitHub Releases](https://github.com/kccarlos/gitcontext/releases/latest) page. These casks
are for macOS only, so Windows and Linux users should download from there.
Issues belong in the [GitContext repository](https://github.com/kccarlos/gitcontext/issues).

## sheepdog

```sh
brew install kccarlos/tap/sheepdog
sheepdog setup          # keys, checks and start at login
```

[sheepdog](https://github.com/kccarlos/herdr-sheepdog) is a command-line tool, so it is a
formula rather than a cask: no `--cask`. It supervises the coding agents you run in
[herdr](https://github.com/herdrdev/herdr), by voice. Available for Apple silicon Macs and
x86_64 Linux.

You can also install it as a herdr plugin, which needs herdr 0.9.4 or newer:

```sh
herdr plugin install kccarlos/herdr-sheepdog
```

The iPhone companion app is in [TestFlight](https://testflight.apple.com/join/bjCaFYgK).
Issues belong in the [sheepdog repository](https://github.com/kccarlos/herdr-sheepdog/issues).

## Update and remove

```sh
# KVoice and GitContext (casks)
brew upgrade --cask kvoice                  # update (or: gitcontext)
brew uninstall --cask kvoice                # remove the app
brew uninstall --zap --cask kvoice          # also remove its settings and data

# sheepdog (formula)
brew upgrade sheepdog
brew uninstall sheepdog
```
