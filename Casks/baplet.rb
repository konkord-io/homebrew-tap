cask "baplet" do
  version "0.6.1"
  sha256 "53addbd24fafe9f145e1075e4fce6a0e1926855da43edc014c5a1d903ae233e7"

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
  depends_on macos: :tahoe

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
