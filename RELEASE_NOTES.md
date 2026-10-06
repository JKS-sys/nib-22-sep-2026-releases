# Nib release notes

## 0.4.6 — 02-oct-2026
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

## 0.4.2
- ipconfig.co.network/nib is the site's own page again (with the site navigation); the Worker's plain copy moved to /nib/download, and /nib/download.json lists the current installers for the site to read
- Pro is now a real Razorpay subscription: ₹20 a month or ₹220 a year, renewing automatically, cancel any time
- Nib renews your licence quietly in the background while the subscription runs — you only activate once
- Opens practically every programming, config and data file, with SQLite databases in a read-only table viewer
- Fixed: with several files open, a tab could show the previous file's text
- "About Me" is now "About the Creator"

## 0.4.2
- Opens practically every programming, config and data file: 80+ languages with colour (C/C++, C#, Java, Kotlin, Swift, Go, Rust, PHP, Ruby, Python, SQL, Shell, PowerShell, YAML, TOML, XML, Dockerfile, Makefile, Lua, R, Julia, Haskell, Dart, Scala, Elixir, Verilog and more), detected by extension, file name or `#!` line
- SQLite databases (.db, .sqlite, .sqlite3, .db3 …) open in a read-only table viewer with a SQL box — Nib never modifies them
- Text in UTF-16 and older Latin-1/Windows encodings opens correctly; binary files show a clear message instead of garbage
- Right-click → Open With → Nib is offered for all of these file types
- Download page now lists macOS Apple Silicon and Intel installers

## 0.4.1
- Hot exit: quitting (⌘Q) or closing the window keeps unsaved and untitled files — they come back exactly as they were on the next launch
- Every setting (side bar, theme, font, expanded folders…) is saved the moment you change it
- The side bar no longer re-opens by itself after a restart; new File → Close Folder and a ✕ in the side bar
- More readable colours: a distinct colour for each kind of token (no pink), rainbow brackets, and colour for plain text, logs and config files
- About Me now shows the creator's photo and contact details
- Smaller app: per-architecture macOS builds (Apple Silicon and Intel) and a leaner Rust core
- Updates are checked on public GitHub first, then the private GitHub repo, then Cloudflare R2
- One-command releases to all three, with Windows and Linux installers built on GitHub Actions

## 0.4.0
- New name: Nib (was Slate), new premium icon with light and dark variants
- Full native menu bar: Nib, File, Edit, Selection, Find, View, Goto, Window, Help
- Finder "Open With" and default-editor support; drag files or folders onto the window or Dock
- Full-height collapsible side bar with collapsible folders
- New find bar with match counter, case/word/regex toggles and highlight-all
- Libre Baskerville by default; Auto / Light / Dark appearance
- Pro plans: ₹20 monthly, ₹220 yearly, with activation codes
- Closing the last window quits Nib completely
