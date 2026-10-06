#!/bin/sh
# Install Nib — the AI code text editor — with one command:
#   curl -fsSL https://raw.githubusercontent.com/JKS-sys/nib-22-sep-2026-releases/main/install.sh | sh
# macOS: puts Nib.app in /Applications (or ~/Applications). Linux: installs the .deb
# with apt when available, otherwise the AppImage into ~/.local/bin/nib.
set -eu
REPO="${NIB_REPO:-JKS-sys/nib-22-sep-2026-releases}"
API="${NIB_API:-https://api.github.com/repos/$REPO/releases/latest}"
say() { printf '\033[1;33m▸\033[0m %s\n' "$*"; }
fail() { printf '\033[1;31m✗\033[0m %s\n' "$*" >&2; exit 1; }
command -v curl >/dev/null 2>&1 || fail "curl is needed"
OS="${NIB_OS:-$(uname -s)}"; ARCH="${NIB_ARCH:-$(uname -m)}"
json=$(curl -fsSL "$API") || fail "Couldn't reach GitHub — check your connection."
asset() { printf '%s' "$json" | tr ',' '\n' | grep '"browser_download_url"' | sed 's/.*"\(https[^"]*\)".*/\1/' | grep -E "$1" | head -n 1; }
fetch() { if [ -n "${NIB_DRY_RUN:-}" ]; then echo "would download $1"; exit 0; fi; say "Downloading $(basename "$1")"; curl -fL --progress-bar "$1" -o "$2"; }
tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
case "$OS" in
  Darwin)
    case "$ARCH" in arm64|aarch64) pat='_aarch64\.dmg$' ;; *) pat='_x64\.dmg$' ;; esac
    url=$(asset "$pat"); [ -n "$url" ] || fail "There is no Mac download in the latest release yet."
    fetch "$url" "$tmp/nib.dmg"
    mnt=$(hdiutil attach -nobrowse -readonly "$tmp/nib.dmg" | tail -n 1 | awk -F '\t' '{print $NF}')
    dest=/Applications; [ -w "$dest" ] || dest="$HOME/Applications"; mkdir -p "$dest"
    rm -rf "$dest/Nib.app"; ditto "$mnt/Nib.app" "$dest/Nib.app"; hdiutil detach -quiet "$mnt" || true
    xattr -dr com.apple.quarantine "$dest/Nib.app" 2>/dev/null || true
    say "Installed $dest/Nib.app"; open "$dest/Nib.app" 2>/dev/null || true ;;
  Linux)
    [ "$ARCH" = x86_64 ] || fail "Nib for Linux is built for x86_64."
    if command -v apt-get >/dev/null 2>&1 && [ -z "${NIB_APPIMAGE:-}" ]; then
      url=$(asset '_amd64\.deb$'); [ -n "$url" ] || fail "There is no .deb in the latest release yet."
      fetch "$url" "$tmp/nib.deb"
      if [ "$(id -u)" = 0 ]; then apt-get install -y "$tmp/nib.deb"; else sudo apt-get install -y "$tmp/nib.deb"; fi
      say "Installed — find Nib in your applications."
    else
      url=$(asset '\.AppImage$'); [ -n "$url" ] || fail "There is no AppImage in the latest release yet."
      mkdir -p "$HOME/.local/bin"; fetch "$url" "$HOME/.local/bin/nib"; chmod +x "$HOME/.local/bin/nib"
      say "Installed ~/.local/bin/nib — run: nib"
    fi ;;
  *) fail "On Windows, run this in PowerShell instead:  irm https://raw.githubusercontent.com/$REPO/main/install.ps1 | iex" ;;
esac
