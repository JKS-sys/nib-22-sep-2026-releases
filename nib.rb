cask "nib" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.9"
  sha256 arm:   "e8a1eec84670ed7b8ab8da48af3142a64b1d4aad206ef6814c87e1428031599b",
         intel: "4f0b7d363a30d7b06a0b81e7bb66401c0330a4205d751c102e51d42148fe80df"

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
