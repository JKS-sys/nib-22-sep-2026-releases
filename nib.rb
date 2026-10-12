cask "nib" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.12"
  sha256 arm:   "838d13714f571ba5dbb46b650105cbbce914f019a9328b4b3df88924dc46110a",
         intel: "26a088c20fdc097f0b30133c303382442ed15b348a7101d6dc39acca9d62a6a9"

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
