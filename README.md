# Homebrew tap for kccarlos

Free, open-source apps by [kccarlos](https://github.com/kccarlos), installable with Homebrew.

| App | What it does | Install (macOS) |
| --- | --- | --- |
| [KVoice](https://github.com/kccarlos/kvoice) | Hold a shortcut, speak, and get finished text in any Mac app, transcribed on your Mac, with optional AI actions to polish, summarize or translate. | `brew install --cask kccarlos/tap/kvoice` |
| [GitContext](https://github.com/kccarlos/gitcontext) | Package Git diffs and code into LLM-ready context, fully offline. | `brew install --cask kccarlos/tap/gitcontext` |

Each cask is updated automatically when its app publishes a new release, and installs the
same notarized build as the DMG on that app's GitHub Releases page.

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

## Update and remove

```sh
brew upgrade --cask kvoice                  # update (or: gitcontext)
brew uninstall --cask kvoice                # remove the app
brew uninstall --zap --cask kvoice          # also remove its settings and data
```

Replace `kvoice` with `gitcontext` for the other app.
