<p align="center">
  <img src="assets/icon-dark.png" width="112" alt="Nib icon, dark">
  &nbsp;&nbsp;
  <img src="assets/icon-light.png" width="112" alt="Nib icon, light">
</p>

# Nib — AI Code Text Editor

<p align="center">
  <a href="https://github.com/JKS-sys/nib-22-sep-2026-releases/releases/latest"><img alt="Latest release" src="https://img.shields.io/github/v/release/JKS-sys/nib-22-sep-2026-releases?label=download&color=b8860b&style=for-the-badge"></a>
  <a href="https://ipconfig.co.network/nib"><img alt="Website" src="https://img.shields.io/badge/website-ipconfig.co.network%2Fnib-b8860b?style=for-the-badge"></a>
  <a href="https://github.com/JKS-sys/nib-22-sep-2026-releases/releases"><img alt="All releases" src="https://img.shields.io/badge/releases-all%20versions-555?style=for-the-badge"></a>
</p>

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

**macOS — Homebrew** (no tap, no extra repository — the cask file is right here):

```sh
curl -fsSL https://raw.githubusercontent.com/JKS-sys/nib-22-sep-2026-releases/main/nib.rb -o /tmp/nib.rb && brew install --cask /tmp/nib.rb
```

Update later with `brew upgrade nib` (Nib also updates itself).

**Download 0.4.11:** [latest release](https://github.com/JKS-sys/nib-22-sep-2026-releases/releases/latest)

| Platform | File |
|---|---|
| macOS Apple Silicon | `Nib_0.4.11_aarch64.dmg` |
| macOS Intel | `Nib_0.4.11_x64.dmg` |
| Windows | `Nib_0.4.11_x64-setup.exe` |
| Linux | `Nib_0.4.11_amd64.AppImage` / `.deb` |

- **macOS:** open the .dmg and drag Nib to Applications. If it says Nib is damaged, run `xattr -cr /Applications/Nib.app`.
- **Windows:** run the setup .exe.
- **Linux.** Install the `.deb` with your package manager, or make the AppImage executable and run it:
  ```sh
  sudo apt install ./Nib_0.4.11_amd64.deb
  # or
  chmod +x Nib_0.4.11_amd64.AppImage && ./Nib_0.4.11_amd64.AppImage
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
- **Writing suggestions as you type** — offline spelling, grammar and character checks with one-click fixes (comments only, in code)
- **AI proofreading** (Pro) — correct the word, sentence or paragraph at the cursor, a selection or the whole file, and see every change word by word before applying it
- **Spreadsheets** — CSV, TSV, Excel (.xlsx .xlsm .xls), OpenDocument (.ods) and Apple Numbers files as a grid: 90+ Excel formulas, several sheets, sort, filter, fill, find & replace, number formats, frozen header, copy/paste with Excel
- **Cell formatting, kept in .xlsx** — fill and text colours (Excel's own colours show, theme colours too), bold/italic/underline/strike, sizes, alignment, wrap text with rows that grow, borders, format painter, table colours, colour scales and data bars; smart fill for months, dates, weekdays, quarters and times (Aug-26 → Sep-26)
- **Numbers-style extras** — charts (column, bar, line, pie) that update as you type, checkbox, star-rating and progress-bar cells, conditional highlighting, summaries by category, and templates (budget, invoice, to-do, habit tracker, grade book)
- **Word documents** — open and edit .docx like Word: styles and headings, bold/italic/underline/strikethrough, colours and highlight, sizes, alignment, bulleted and numbered lists, tables, pictures, links, page breaks, word count, zoom, printing, and AI writing (correct, change tone, shorten, lengthen, continue, summarise)
- **Presentations** — open and edit .pptx like PowerPoint and Keynote: text boxes, shapes and pictures you move and resize, slide list, themes, transitions, and a full-screen presenter; AI turns an outline into slides
- **Word extras** — comments in the margin, footnotes and endnotes, Track Changes (record, accept, reject), and the header and footer with page numbers
- **PowerPoint extras** — speaker notes, charts drawn from their data (edit the numbers), tables you edit in place, SmartArt — all kept when saving
- **Old and Apple formats** — .doc, .ppt, .rtf, .odt, .odp, Pages and Keynote open and save back, using macOS's own converter, LibreOffice or Pages/Keynote when present; without any, the text of .doc and .ppt still opens
- **Spreadsheet charts and highlighting saved** — as real Excel charts and conditional formatting that Excel, Numbers and LibreOffice show
- **Password-protected Office files** — Excel, Word and PowerPoint files open with their password and save still protected (the same encryption Office uses)
- **Archives** — opening a zip extracts it beside itself (into its one folder, or a folder named after it) and the window closes; password-protected zips open; .rar, .7z and .tar files extract through the computer's own tools. **Compress…** makes a zip at the strongest setting (files that would not shrink are stored as they are), or tar.xz / tar.zst / 7z / RAR when those tools are present — always lossless, with the saving shown
- **Split archives** — x.zip.001, x.zip.part0 and x.z01 pieces open from any piece; Zip in parts; ZIP64 for files over 4 GB
- **Look Inside zips** — Extract To, Info, Report, Benchmark, exact sizes; browse, sort, filter, extract only what you tick, and test every checksum
- **Pictures** — HEIC, TIFF and other formats the web view can't decode are converted for display; zoom, pan, rotate, flip, step through the folder with ← → or the mouse wheel, slideshow, full screen, a colour picker that copies any pixel's hex code, an info panel, checkerboard for transparency
- **Books** — EPUBs open with their table of contents, search across the whole book, scroll on past a chapter's end to turn the page, page colours (paper, sepia, night), line spacing, minutes left, text size and font choice, a reading-position memory and plain-text export
- **PDFs** — drawn by Nib itself on every system; scroll with the wheel or turn one page per notch in whole-page view, two-page spreads, night reading, full screen, reopens at your page; thumbnails, a contents panel from the PDF's bookmarks, find, zoom and selectable text; page tools: merge, extract, split, rotate, reorder, delete, page numbers, shrink, copy the text
- **Printing** (⌘P) — every kind of tab, with a live preview on paper: paper, orientation, margins, colour or black & white, a header on every page; code keeps its syntax colours and line numbers; sheets, slides (handouts, notes), PDF page ranges, pictures and books
- **Search the web** — DuckDuckGo, Bing, Google, Mojeek, Yahoo and Wikipedia asked at once; blocked engines are skipped and the rest merged, with sources in the AI chat
- **300 spreadsheet functions** — including money (PMT, FV, PV, NPER, RATE, NPV, IRR, depreciation), statistics (percentiles, correlation, regression, normal distribution), engineering (CONVERT, BIN/HEX/OCT, bit operations), dates (NETWORKDAYS, WORKDAY, YEARFRAC) and database functions (DSUM…), checked against LibreOffice Calc
- **Crash reports** — if Nib ever closes unexpectedly, it offers to send an anonymous report next time (version, system, the error and where — never your files); the owner reads them in the Owner Panel, in full, and exports them as .txt or .md
- **Owner Panel** (the owner's Mac only — its serial is the key, nothing to type) — its own window with licence codes (generate, revoke, restore, extend, annotate, delete), every subscription in detail with create / pause / resume / plan change / customer / note / issue code / cancel / delete, and the crash reports
- **Opens with a double-click** — Make Nib the Default Opener registers every type Nib handles: text and code, spreadsheets, Word and PowerPoint files (old and Apple formats too), pictures, PDFs, EPUBs and archives
- **Mouse page-turning** — the wheel, a swipe, or the mouse's Back / Forward buttons turn pages in PDFs, books, pictures and slides
- **Colour for early understanding** (never pink) — keywords, operators, punctuation and comments split by kind, TODO/FIXME tags, colour swatches you click to change, the word under the cursor echoed, sixteen file-kind colours across the side bar and tabs, rainbow brackets *and* indent guides (seven hues; the cursor's pair and block glow), a syntax-coloured formula bar in spreadsheets, coloured code in AI chat replies, a hue for each tab and status-bar item
- **Every local AI** — finds Ollama, LM Studio, Jan, GPT4All, LocalAI, llama.cpp, KoboldCpp, text-generation-webui, vLLM, LiteLLM, Msty and Llamafile running on your computer and uses their models in one click; pulls Ollama models by name; adds any GGUF model from Hugging Face (checksum-verified)
- **13 offline AI models** to download, run and remove on your own computer — free and private; or **GitHub Copilot**, or any AI service by its URL
- **Always knows what is unsaved** — compared with the file on disk, not guessed: a change gutter, Compare with Saved, and a warning when another app changes the file
- **Never loses your work** — ⌘Q keeps unsaved and untitled files, spreadsheets, documents and decks too; they come back on the next launch
- **Split panes**, **named windows**, **Markdown preview**, **five colour variants** with a colour for each tab, **thirteen sound packs**, **background sounds** (rain, ocean, brown noise, wind, fireplace, night), sparks as you type, a glowing cursor, file-type badges and animations throughout
- **80+ languages**, SQLite databases in a read-only viewer, side-bar file actions, Goto Anything (⌘T), multi-cursor, find in folder, bookmarks, minimap, JSON / Base64 / URL tools

**Free:** everything above except the items marked Pro, Find in Folder, Goto Symbol, multi-cursor tools, bookmarks, text tools, minimap, auto save and distraction-free mode.
**Pro (₹20/month or ₹220/year):** AI, plus all of those.

## What's new in 0.4.11

- Fixed: filling down from Aug-26 gave Aug-26 again (or a plain number) instead of Sep-26. Smart fill now continues months (as dates or as text, across the year, month ends kept), days, weeks, weekdays, quarters (Q4 → Q1 2027), ISO and 1-Aug-2026 dates and times; typing Aug-26 in a workbook makes a real month, as Excel does. Formats and colours go along with the filled values
- Fixed: colouring made in Microsoft Excel did not show, and colouring done in Nib was not saved. Nib now reads and writes cell fill and text colours (including theme colours with tints), bold, italic, underline, strikethrough, text size, alignment, wrapped text, borders and row heights — and Excel's conditional formatting (greater/less/equal/contains, colour scales, data bars) shows in Nib
- Spreadsheet formatting bar: B I U S, bigger/smaller text, text colour, fill colour, 17 quick colours (⇧-click for text), align left/centre/right, Wrap text (the row grows to fit), borders, format painter, more/fewer decimals, clear formatting, Table colours (header and banded rows), Colour scale and Data bars; ⌘B ⌘I ⌘U on cells; column letters each in their own colour
- Fixed: "Correct Paragraph" (or the selection) after selecting all lines put every line into one. Corrected text keeps each line break and its indentation, even when the AI joins them
- Writing suggestions as you type, offline: common misspellings (teh → the, recieve → receive …), a word written twice, a/an, a lone "i", a sentence starting with a small letter, a space before punctuation, no space after a comma, doubled punctuation, extra spaces, invisible characters, very long sentences and paragraphs — underlined in four colours with one-click fixes, "Fix All" in the status bar; in code only comments are checked. Documents get ✎ Check with a list of suggestions and Fix all
- Text wraps everywhere by default — the editor, Markdown preview, compare, database cells, AI replies — with a Wrap switch in the status bar (⌥Z)
- Fixed: compressing a file of 4 GB or more failed. Zip now writes ZIP64 for big files (tested with a real 4.4 GB file, opened by Python and unzip), and shows progress in bytes while it works
- Split archives open from any piece: x.zip.001 / .002 …, x.zip.part0 / .part1 … and spanned x.z01 … x.zip, read in place without joining them first; 7z and RAR pieces go to the computer's own tools. Compress → "Zip in parts…" cuts a zip into 25 MB, 100 MB, 700 MB, 1 GB, 4 GB (FAT32) or any size of pieces
- Archives, as in WinRAR: Extract To… a folder you choose, Info (format, ZIP64, files, folders, exact sizes, saving, pieces, comment), Report (.md listing of every file), Benchmark (compress and extract speed), exact byte sizes, a pieces badge
- Books: two pages side by side, like an open book (the wheel, arrows, Space and the mouse buttons turn them; the last spread turns the chapter), full screen, bookmarks and coloured highlights (listed in Contents, click a highlight to remove it), read aloud with the system's voices
- PDFs: bookmark pages (listed in Contents), read aloud from the current page, Snapshot (copy a page as a picture)
- Documents: read aloud from the cursor, Focus mode, ✎ Check writing
- Icons on every toolbar — one line drawing per command (B/I/U, highlighter, alignment, lists, table, picture, link, comment, track changes, thumbnails, fit width/page, rotate, two pages, night, bookmark, read aloud, snapshot, merge/extract/split pages, extract, test, info, report, benchmark, fill, borders, format painter, wrap, sort, filter, freeze, chart, Σ …), coloured by kind
- Sounds for filling a series, fixing a suggestion, highlighting, opening two pages, a snapshot (a shutter), the format painter and the wrap switch; a flash on formatted cells, a camera flash on snapshots, a book-opening motion, striped progress
- Release: GitHub repositories now get a description, the website (ipconfig.co.network/nib) and 20 topics on every release; the Razorpay plans are the new ₹20 monthly and ₹220 yearly plans (update.sh also takes them from RZP_20_MONTHLY / RZP_220_YEARLY in .env)
- `npm run apple-sign`: when you join the Apple Developer Program, signs with your Developer ID, notarizes and staples the app and .dmg (opens with no warning); `npm run apple-sign -- --appstore` builds a sandboxed, signed .pkg for the Mac App Store (outside payment links hidden in that build); `npm run apple-check` says what is ready

See [RELEASE_NOTES.md](RELEASE_NOTES.md). Made by Jagadeesh Kumar S, creator · [YouTube](https://www.youtube.com/@JKS-sys)
