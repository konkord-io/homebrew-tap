cask "baplet" do
  version "0.5.0"
  sha256 "2e962381c321f5072cd799f396d905debd6e66608faa499b6c5035f591f30faa"

  url "https://github.com/konkord-io/baplet/releases/download/v#{version}/Baplet-#{version}.dmg",
      verified: "github.com/konkord-io/baplet/"
  name "Baplet"
  desc "Menu bar app that alerts you before calendar meetings"
  homepage "https://baplet.konkord.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Baplet.app"

  uninstall quit: "io.konkord.baplet"

  zap trash: [
    "~/Library/Containers/io.konkord.baplet",
    "~/Library/Preferences/io.konkord.baplet.plist",
  ]

  caveats <<~EOS
    Baplet is free software and isn't signed by Apple, so macOS blocks it the
    first time you open it. Open Baplet once, click Done, then go to
    System Settings → Privacy & Security and click Open Anyway.

    Step by step: https://baplet.konkord.io/docs.html#install

    Baplet updates itself (Settings → About → Check for Updates).
  EOS
end
