cask "nib" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.10"
  sha256 arm:   "fdbeb34a6d2d8b03863cba2cfca9716bca43137c3ed3e49ceca068272274fa80",
         intel: "fb18ef067efd7f913b66d49a361dbe0fb3836988a69d44d53f8d37ebef8977f1"

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
