# Konkord Homebrew tap

Homebrew casks for [Konkord](https://github.com/konkord-io) apps.

## Baplet

[Baplet](https://baplet.konkord.io) is a macOS menu bar app that alerts you before calendar meetings.

```sh
brew install konkord-io/tap/baplet
```

Baplet is free software and isn't signed by Apple, so macOS blocks it the first time you open it: open it once, click **Done**, then go to **System Settings → Privacy & Security** and click **Open Anyway**. See the [install guide](https://baplet.konkord.io/docs.html#install).

Baplet updates itself (Settings → About → Check for Updates), so `brew upgrade` leaves it alone. `brew uninstall --zap baplet` also removes its settings.

## How the cask stays current

Publishing a Baplet release runs `.github/workflows/homebrew.yml` in [konkord-io/baplet](https://github.com/konkord-io/baplet), which updates the version and SHA-256 in `Casks/baplet.rb` here. Don't edit those two lines by hand.
