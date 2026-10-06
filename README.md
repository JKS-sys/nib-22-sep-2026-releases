<p align="center">
  <img src="assets/icon-dark.png" width="112" alt="Nib icon, dark">
  &nbsp;&nbsp;
  <img src="assets/icon-light.png" width="112" alt="Nib icon, light">
</p>

# Nib — AI Code Text Editor

**An AI code text editor that opens instantly and never loses your work.** Built with Tauri and Rust — a few MB per platform — for macOS, Windows and Linux.

| | |
|---|---|
| Website | [ipconfig.co.network](https://ipconfig.co.network) |
| Nib's page | [ipconfig.co.network/nib](https://ipconfig.co.network/nib) |
| Releases | [github.com/JKS-sys/nib-22-sep-2026-releases/releases](https://github.com/JKS-sys/nib-22-sep-2026-releases/releases) |

## Install

**One command — macOS and Linux** (curl):

```sh
curl -fsSL https://raw.githubusercontent.com/JKS-sys/nib-22-sep-2026-releases/main/install.sh | sh
```

**One command — Windows** (PowerShell):

```powershell
irm https://raw.githubusercontent.com/JKS-sys/nib-22-sep-2026-releases/main/install.ps1 | iex
```

**macOS — Homebrew** (one command, no separate tap step):

```sh
brew install jks-sys/tap/nib
```

Update later with `brew upgrade nib` (Nib also updates itself).

**Download 0.4.6:** [latest release](https://github.com/JKS-sys/nib-22-sep-2026-releases/releases/latest)

| Platform | File |
|---|---|
| macOS Apple Silicon | `Nib_0.4.6_aarch64.dmg` |
| macOS Intel | `Nib_0.4.6_x64.dmg` |
| Windows | `Nib_0.4.6_x64-setup.exe` |
| Linux | `Nib_0.4.6_amd64.AppImage` / `.deb` |

- **macOS:** open the .dmg and drag Nib to Applications. If it says Nib is damaged, run `xattr -cr /Applications/Nib.app`.
- **Windows:** run the setup .exe.
- **Linux.** Install the `.deb` with your package manager, or make the AppImage executable and run it:
  ```sh
  sudo apt install ./Nib_0.4.6_amd64.deb
  # or
  chmod +x Nib_0.4.6_amd64.AppImage && ./Nib_0.4.6_amd64.AppImage
  ```

## Screenshots

<p align="center"><img src="assets/screenshots/start.webp" width="820" alt="Nib's start screen"></p>

**The start screen.** Nib opens straight to work: New File (⌘N), Open File (⌘O), Open Folder (⇧⌘O) and Open Recent (⌥⌘O), each with its shortcut. Your Pro plan shows at the top right, and with nothing open Nib is ready to type at once.

<p align="center"><img src="assets/screenshots/about.webp" width="820" alt="About Nib"></p>

**About Nib.** The version you are running, what Nib is — a fast code editor with a native Rust core and CodeMirror 6 that opens instantly and remembers where you left off — and where its updates come from.

<p align="center"><img src="assets/screenshots/creator.webp" width="820" alt="About the creator"></p>

**About the creator.** Who makes Nib — Jagadeesh Kumar S, a creator in Velachery, Chennai — with his YouTube channel NewsCraft Studio, his website, and how to get in touch.

## Features

- **AI as you type** (Pro) — suggestions appear as faint text, Tab accepts; plus Explain, Fix, Generate and Ask about your code
- **AI chat beside any file** (Pro) — ask about it, or have it fill, add, change and delete things: spreadsheet cells and rows, document paragraphs, slides, text. Every change is shown first and undone with one ⌘Z
- **Voice** — dictate into any file or the chat (F8), and run spoken commands: “save”, “split right”, “go to line 40”, “new spreadsheet”, “start the slideshow” (⇧F8)
- **AI proofreading** (Pro) — correct the word, sentence or paragraph at the cursor, a selection or the whole file, and see every change word by word before applying it
- **Spreadsheets** — CSV, TSV, Excel (.xlsx .xlsm .xls), OpenDocument (.ods) and Apple Numbers files as a grid: 90+ Excel formulas, several sheets, sort, filter, fill, find & replace, number formats, frozen header, copy/paste with Excel
- **Numbers-style extras** — charts (column, bar, line, pie) that update as you type, checkbox, star-rating and progress-bar cells, conditional highlighting, summaries by category, and templates (budget, invoice, to-do, habit tracker, grade book)
- **Word documents** — open and edit .docx like Word: styles and headings, bold/italic/underline/strikethrough, colours and highlight, sizes, alignment, bulleted and numbered lists, tables, pictures, links, page breaks, word count, zoom, printing, and AI writing (correct, change tone, shorten, lengthen, continue, summarise)
- **Presentations** — open and edit .pptx like PowerPoint and Keynote: text boxes, shapes and pictures you move and resize, slide list, themes, transitions, and a full-screen presenter; AI turns an outline into slides
- **Word extras** — comments in the margin, footnotes and endnotes, Track Changes (record, accept, reject), and the header and footer with page numbers
- **PowerPoint extras** — speaker notes, charts drawn from their data (edit the numbers), tables you edit in place, SmartArt — all kept when saving
- **Old and Apple formats** — .doc, .ppt, .rtf, .odt, .odp, Pages and Keynote open and save back, using macOS's own converter, LibreOffice or Pages/Keynote when present; without any, the text of .doc and .ppt still opens
- **Spreadsheet charts and highlighting saved** — as real Excel charts and conditional formatting that Excel, Numbers and LibreOffice show
- **Password-protected Office files** — Excel, Word and PowerPoint files open with their password and save still protected (the same encryption Office uses)
- **Every local AI** — finds Ollama, LM Studio, Jan, GPT4All, LocalAI, llama.cpp, KoboldCpp, text-generation-webui, vLLM, LiteLLM, Msty and Llamafile running on your computer and uses their models in one click; pulls Ollama models by name; adds any GGUF model from Hugging Face (checksum-verified)
- **13 offline AI models** to download, run and remove on your own computer — free and private; or **GitHub Copilot**, or any AI service by its URL
- **Always knows what is unsaved** — compared with the file on disk, not guessed: a change gutter, Compare with Saved, and a warning when another app changes the file
- **Never loses your work** — ⌘Q keeps unsaved and untitled files, spreadsheets, documents and decks too; they come back on the next launch
- **Split panes**, **named windows**, **Markdown preview**, **five colour variants** with a colour for each tab, **four sound packs**, file-type badges and animations throughout
- **80+ languages**, SQLite databases in a read-only viewer, side-bar file actions, Goto Anything, multi-cursor, find in folder, bookmarks, minimap, JSON / Base64 / URL tools

**Free:** everything above except the items marked Pro, Find in Folder, Goto Symbol, multi-cursor tools, bookmarks, text tools, minimap, auto save and distraction-free mode.
**Pro (₹20/month or ₹220/year):** AI, plus all of those.

## What's new in 0.4.6

- Fixed: a file reopened after ⌘Q was shown as altered even when it matched the file on disk. Nib now compares your text with the file itself, so undoing back to the saved text clears the dot too
- Nib notices files changed by other apps (git, formatters, other editors): untouched tabs reload, tabs with your edits show a bar to compare, reload or keep yours — and a file that changed while Nib was closed is reported instead of silently overwritten
- Change gutter marks added, changed and removed lines; F7 / ⇧F7 jump between changes; Compare with Saved (⌥⌘D) shows the difference
- Saving keeps Windows (CRLF) line endings, UTF-8 byte-order marks and file permissions
- Split panes like Keel: Split Right (⌘\), Split Down (⇧⌘\), drag a tab onto any side of the editor, resize, maximise (⇧⌘↩), close a pane and the file stays as a tab
- Named windows (Window → Name Window…), Switch Window, Move Tab to New Window (or drag it out), Merge All Windows
- Five colour variants — Gold, Ocean, Ember, Violet, Calm — in light and dark, plus a colour for each tab; no pink anywhere
- AI (Pro): suggestions as you type (Tab accepts), plus Explain, Fix, Generate and Ask about your code
- 13 offline AI models to download, run and remove on your computer — Qwen2.5 Coder, DeepSeek Coder, StarCoder2, CodeGemma, Llama 3.2, Phi-3.5, Gemma 2 — with fill-in-the-middle completion for the most accurate suggestions
- GitHub Copilot: sign in with GitHub and use your Copilot plan; or add any AI service by URL
- Word completion from every open file, free and offline
- Animations and sound effects (Settings → Animations, Sounds)
- One About section with the app, these notes and the creator
- Spreadsheets: CSV, TSV, Excel (.xlsx .xlsm .xls), OpenDocument (.ods) and Apple Numbers files open as a grid — 90+ Excel formulas, several sheets, sort, filter, fill, find & replace, number formats, copy/paste with Excel, and AI to change the data, write a formula or answer questions
- Password-protected Excel workbooks open with their password and save still protected
- AI proofreading: correct a word, sentence, paragraph, selection or the whole file — right-click, or ⌥⌘K — with every change shown first
- Owner licence console: generate monthly, yearly and lifetime codes (never a duplicate), see where and on what each was activated, and revoke, restore, extend or delete them
- Markdown preview beside the file; side-bar file actions (new, rename, duplicate, move to Trash); JSON, Base64 and URL tools; word count
- Fixed: the window could not be dragged by its title bar
- Fixed: double-clicking a tab kept adding split panes, some of them off-screen; tabs now leave the window only when dragged out sideways or below
- Fixed: an AI model deleted in Keel still showed as installed in Nib (they share one copy — Nib now asks whether to remove it from both)
- "Make Nib the default editor" is now quick, with progress, and no longer freezes the window
- Smaller app: Nib updates itself without the bulky updater plugin
- Word: comments in the margin, footnotes and endnotes, Track Changes (records your edits; accept or reject one or all), an editable header and footer with page numbers, and an outline of the headings
- PowerPoint: speaker notes, charts drawn from their data (double-click to edit the numbers), tables you edit in place, and SmartArt — all kept when saving
- Old and Apple formats: .doc, .ppt, .rtf, .odt, .odp, Pages and Keynote open and save back (with macOS's converter, LibreOffice, or Pages/Keynote); without one, the text of .doc and .ppt still opens
- Spreadsheet charts and highlighting are saved as real Excel charts and conditional formatting
- Every local AI: Nib finds Ollama, LM Studio, Jan, GPT4All, LocalAI, llama.cpp, KoboldCpp, text-generation-webui, vLLM, LiteLLM, Msty and Llamafile and uses their models in one click; pulls Ollama models; adds any GGUF from Hugging Face
- Install in one command: `curl -fsSL https://raw.githubusercontent.com/JKS-sys/nib-22-sep-2026-releases/main/install.sh | sh` (PowerShell: `irm …/install.ps1 | iex`)
- Windows voice typing works offline with Windows' own speech engine; printing uses the system print dialog on every OS
- Confetti for the big moments
- Word documents: open, edit and save .docx — styles, headings, formatting, lists, tables, pictures, links, page breaks, printing, and AI writing tools
- Presentations: open, edit, present and save .pptx — move and resize text, shapes and pictures, themes, transitions, a full-screen presenter, and AI slides from an outline
- AI chat beside any file: fills, adds, changes and deletes spreadsheet cells and rows, document paragraphs, slides or text — you approve every change, and ⌘Z undoes it
- Voice: dictation (F8) and spoken commands (⇧F8) such as “save”, “split right” or “go to line 40”
- Spreadsheets get Numbers-style charts, checkbox / star / progress cells, conditional highlighting, summaries by category and templates
- Owner console: every subscription in detail — customer, plan, status, payments, next charge, licence and where it is used — with cancel now or at period end
- Fixed: a damaged password-protected file could close Nib; a Word file in the saved session could be skipped on restart; a table saved from a Word document had a broken column grid
- Smaller again: Nib moves files to the Trash with each system's own tools instead of an extra library
- Install with Homebrew in one command: `brew install jks-sys/tap/nib`
- Four sound packs, more sounds and animations for tabs, panes, windows and panels
- macOS: if Nib won't open after installing, run `xattr -cr /Applications/Nib.app`

See [RELEASE_NOTES.md](RELEASE_NOTES.md). Made by Jagadeesh Kumar S, creator · [YouTube](https://www.youtube.com/@JKS-sys)
