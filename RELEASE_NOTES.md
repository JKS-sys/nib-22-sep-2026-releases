# Nib release notes

## 0.4.9 — 02-oct-2026
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
- Owner Panel: generate monthly, yearly and lifetime codes (never a duplicate), see where and on what each was activated, and revoke, restore, extend or delete them
- Markdown preview beside the file; side-bar file actions (new, rename, duplicate, move to Trash); JSON, Base64 and URL tools; word count
- Fixed: the window could not be dragged by its title bar
- Fixed: double-clicking a tab kept adding split panes, some of them off-screen; tabs now leave the window only when dragged out sideways or below
- Fixed: an AI model deleted in Keel still showed as installed in Nib (they share one copy — Nib now asks whether to remove it from both)
- "Make Nib the default editor" is now quick, with progress, and no longer freezes the window
- Smaller app: Nib updates itself without the bulky updater plugin
- Archives: open a zip to extract it (into its one folder, or a folder named after it; the window then closes); password-protected zips; .rar/.7z/.tar through the computer's tools; Compress… makes a zip at the strongest setting, or tar.xz/tar.zst/7z/RAR when present, and shows the saving
- Pictures, EPUB books and PDFs open in Nib — PDFs with merge, extract, split, rotate, reorder, delete, page numbers and shrink
- 120 more spreadsheet functions (money, statistics, engineering, dates, database), each checked against LibreOffice Calc
- Tabs merge: drop a tab onto another Nib window to move it there; "Merge All Windows into This One" in the tab menu
- Crash reports: Nib offers to send an anonymous report after an unexpected close; the Owner Panel lists them
- The Owner Panel is keyed to the owner's Mac serial — no admin token anywhere any more
- Homebrew without a tap: the cask ships in the releases repo (curl it, then brew install --cask); the homebrew-tap repository is retired
- The line under the tabs now runs the whole width of the window, glowing under the open tab; richer syntax colours (variables, definitions, tags, attributes, headings by level), seven bracket colours, coloured status bar
- Release notes are published to R2 with each release; older installers are removed after a successful release
- Fixed: a formula argument that was itself a comma or semicolon (for example TEXTJOIN(",", …)) was read as a separator
- Word: comments in the margin, footnotes and endnotes, Track Changes (records your edits; accept or reject one or all), an editable header and footer with page numbers, and an outline of the headings
- PowerPoint: speaker notes, charts drawn from their data (double-click to edit the numbers), tables you edit in place, and SmartArt — all kept when saving
- Old and Apple formats: .doc, .ppt, .rtf, .odt, .odp, Pages and Keynote open and save back (with macOS's converter, LibreOffice, or Pages/Keynote); without one, the text of .doc and .ppt still opens
- Spreadsheet charts and highlighting are saved as real Excel charts and conditional formatting
- Owner Panel (was "owner console") in its own window — Nib → Owner Panel… (⌥⇧⌘O) — opened by the owner's Mac serial alone
- Subscriptions in detail, with everything: create one for a customer (Razorpay emails the payment link), pause and resume, move between monthly and yearly now or at the period end, edit the customer, keep a note, issue the licence code once paid (or deliberately before), cancel at the period end or now, delete; search, filter and CSV export
- Crash reports in the Owner Panel: each readable in full, deletable one by one or all at once, exportable as .txt or .md — and this computer's own reports (sent or not) listed, readable, exportable and deletable
- Fixed: after "Make Nib the default", files double-clicked in the Finder or Explorer did not open — start-up stopped on an old font setting, so the files waited for ever; start-up can no longer be stopped by a setting, and Nib now declares every type it opens (documents, slides, pictures, PDFs, books and archives, not only text and spreadsheets); on Linux the launcher passes the file
- Release notes are attached to each GitHub release and uploaded to R2; older releases, stray assets and old R2 files are removed once the new release is confirmed
- Rainbow indent guides (seven hues, the cursor's block glows), a syntax-coloured formula bar in spreadsheets, coloured code in AI chat replies
- New sounds (issue, pause, resume, export) and motion: tab switches settle in, guides ignite, the Owner Panel's ribbon, lifted stat cards and glowing payment links
- Smaller: the PDF tools carry one font's metrics instead of fourteen (55 KB less, compressed)
- Fixed: pictures said "This picture type can't be shown here", EPUB pictures were missing and PDFs stayed blank — the app's security policy blocked the in-memory pictures every viewer uses. The tests now run under the very same policy, so this cannot come back unnoticed
- PDFs are drawn by Nib itself (pdf.js), the same on Mac, Windows and Linux: thumbnails, page number box, zoom (⌘ + scroll), fit width / whole page, turn the view, find in the PDF with every hit highlighted, selectable text
- Pictures the web view can't decode (HEIC, TIFF, AVIF on older systems…) are converted by the system for display (sips on macOS, WIC on Windows, ImageMagick/libheif on Linux); the file itself is untouched
- EPUB covers show again (most are pictures wrapped in SVG, which were dropped); centred and italic text keep their layout
- Print… (⌘P) for every kind of tab, with a live preview on paper: paper size, orientation, margins, colour or black & white, the name and date on every page; code with line numbers, wrapping and its syntax colours and rainbow brackets; spreadsheets (this sheet, every sheet or the selection, gridlines, A B C / 1 2 3); documents; slides one per page, 2/4/6 per page or with speaker notes; PDF page ranges; pictures fitted or actual size; a book chapter or the whole book. Goto Anything moved to ⌘T
- Fixed: after every update macOS asked "Nib would like to access files in your Downloads folder". Nib no longer reads Downloads at start-up (old installers there are tidied only after an update, and only if you turn it on in Settings), and Mac builds are now signed with the same certificate every time, so macOS keeps your answers across updates
- Start-up animation: the nib draws itself in ink, sparks fly, "Nib" rises in colour, the tagline types itself, "By Jagadeesh Kumar S" shines — with a start-up chord, a sparkle and typing ticks. Any key skips it; Settings → Start-up animation turns it off
- Look Inside a zip (as in PeaZip, NanaZip, MacPacker): every entry with its size, packed size and saving, sorted and filtered; tick some and extract only those; Test reads every file and checks its checksum without writing anything
- PDF contents panel (as in Skim): the PDF's own bookmarks, by level and in colour, each going to its page
- Search a whole EPUB book (as in calibre): every chapter is searched, the next match is marked and scrolled to
- Scrollbars take their tab's colour; archive rows, sizes and savings are colour-coded
- More colour: file names take their kind's colour, Markdown preview headings by level with coloured lists, quotes, tables and code, spreadsheet numbers and active headers, menus that glow item by item, coloured settings headings and shortcuts
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
