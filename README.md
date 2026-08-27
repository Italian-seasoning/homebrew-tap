# Homebrew Tap

Homebrew casks for [Italian-seasoning](https://github.com/Italian-seasoning) macOS apps.

## Install

```sh
brew install --cask --no-quarantine italian-seasoning/tap/pullr
brew install --cask --no-quarantine italian-seasoning/tap/codex-usage-monitor
brew install --cask --no-quarantine italian-seasoning/tap/parakeet-transcriber
```

These apps are not Apple-notarized, so `--no-quarantine` is required. Homebrew still verifies each release archive against the SHA-256 checksum in its cask. All apps include Sparkle for in-app updates.
