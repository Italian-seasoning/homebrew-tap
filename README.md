# Homebrew Tap

Homebrew casks for [Italian-seasoning](https://github.com/Italian-seasoning) macOS apps.

## Install

```sh
brew install --cask italian-seasoning/tap/pullr
brew install --cask italian-seasoning/tap/codex-usage-monitor
brew install --cask italian-seasoning/tap/parakeet-transcriber
```

These apps are not Apple-notarized. Each cask verifies its release archive against a pinned SHA-256 checksum, installs the app, then removes macOS quarantine so it can launch without Apple notarization. All apps include Sparkle for signed in-app updates.
