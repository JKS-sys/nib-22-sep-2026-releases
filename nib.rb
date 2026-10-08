cask "nib" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.7"
  sha256 arm:   "13fd523716e9b928509d47d2e27c9e97ee36cece1b8e086d2ab37139dbf159b0",
         intel: "fc45c31060571673f6b918666b7463900dfb220abfa9d8cb662a6075963fd08c"

  url "https://github.com/JKS-sys/nib-22-sep-2026-releases/releases/download/v#{version}/Nib_#{version}_#{arch}.dmg",
      verified: "github.com/JKS-sys/nib-22-sep-2026-releases/"
  name "Nib"
  desc "AI code text editor"
  homepage "https://ipconfig.co.network/nib"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Nib.app"

  # Nib is not notarised yet: let it open without the "damaged" warning.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Nib.app"]
  end

  zap trash: [
    "~/.nib",
    "~/Library/Application Support/network.co.ipconfig.nib",
    "~/Library/Caches/network.co.ipconfig.nib",
    "~/Library/WebKit/network.co.ipconfig.nib",
  ]
end
