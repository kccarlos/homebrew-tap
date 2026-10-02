# Homebrew tap for KVoice

[KVoice](https://github.com/kccarlos/kvoice) is a free, open-source Mac app:
hold a shortcut, speak, and get finished text in any app, transcribed on your
Mac, with optional AI actions to polish, summarize or translate.

```sh
brew install --cask kccarlos/tap/kvoice
```

Requires a Mac with Apple silicon and macOS 15 or later. The app is the same
notarized build as the DMG on
[GitHub Releases](https://github.com/kccarlos/kvoice/releases); this tap is
updated automatically when a new version is released.

```sh
brew upgrade --cask kvoice                 # update
brew uninstall --cask kvoice               # remove the app
brew uninstall --zap --cask kvoice         # also remove its settings, models and history
```

Issues with the app belong in the
[KVoice repository](https://github.com/kccarlos/kvoice/issues).
