cask "nib" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.8"
  sha256 arm:   "d84944e2cb75cbe4d3b5bca890368a22f856daa55ac241ff524c35d1b956b305",
         intel: "45f5de7f4836ee1b381af9cee15832d0e57ede3ba72ba20066bcea8735c577ca"

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
