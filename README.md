# Homebrew Tap

Homebrew casks for [Italian-seasoning](https://github.com/Italian-seasoning) macOS apps.
[View the Runway website](https://italian-seasoning.github.io/CodexUsageMonitor/).

## Install

| App | Current preview | Minimum macOS | Command |
| --- | --- | --- | --- |
| Runway | 4.0.9 | 14 | `brew install --cask italian-seasoning/tap/runway` |
| Pullr | 1.1.2 | 14 | `brew install --cask italian-seasoning/tap/pullr` |
| Parakeet Transcriber | 1.2 | 13 · Apple silicon | `brew install --cask italian-seasoning/tap/parakeet-transcriber` |
| Capturely | 0.1.3 | 26 · Apple silicon | `brew install --cask italian-seasoning/tap/capturely` |
| FrameBar | 1.0.2 | 14 | `brew install --cask italian-seasoning/tap/framebar` |

Parakeet installs its MacParakeet CLI dependency automatically.
Pullr also needs `brew install yt-dlp ffmpeg deno`.

## Update

```sh
brew update
brew upgrade --cask --greedy italian-seasoning/tap/runway italian-seasoning/tap/pullr italian-seasoning/tap/parakeet-transcriber italian-seasoning/tap/capturely italian-seasoning/tap/framebar
```

All five apps also include Sparkle for signed in-app updates. `--greedy` includes casks marked as auto-updating.

## Runway migration

Runway was previously named Codex Usage Monitor. `cask_renames.json` maps `codex-usage-monitor` to `runway`; after `brew update`, Homebrew can migrate the installed cask. The installed app is now `Runway.app`; its existing bundle identifiers preserve update and widget compatibility.

## Preview signing

Runway 4.0.9 uses anonymous ad-hoc signing and is not Apple-notarized. Each cask verifies a version-pinned SHA-256 checksum and leaves macOS Gatekeeper checks enabled. If macOS blocks a first launch, review the app in **System Settings → Privacy & Security**. A checksum verifies the published archive; it is not Apple notarization.

Capturely needs Screen Recording access to capture footage. FrameBar needs it for game readings. Parakeet models are downloaded by the CLI when needed.

## License

[MIT](LICENSE), copyright 2026 Italian-seasoning.
