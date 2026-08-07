# After-Action Reviews

## 2026-07-29 — Makefile, Unix-citizen rewrite, logo asset located

**What went well:**
- The Makefile stayed minimal (`install`/`uninstall`/`lint`/`check`) and matched what a
  one-script repo actually needs — no over-engineering for a project this size.
- The rewritten script (`--help`, `--version`, long/short options, `--`, proper exit codes,
  fixed the `printf "$file\n"` format-string bug) passed `shellcheck` clean on the first run.

**What didn't go well:**
- `make install` defaulted to `/usr/local/bin`, which wasn't writable on this machine —
  had to stop and ask the user whether to use `sudo` or a user-owned prefix rather than
  picking a sensible default upfront.
- The script depends on a logo asset at `~/.config/logos/mandarine-logo-small.pdf` that
  exists nowhere in version control — not in this repo, not in the dotfiles repo. Finding it
  required searching the whole disk, turning up several near-duplicate candidates
  (`mandarine-logo.pdf`, `mandarine-logo-primary.pdf`, `mandarine-logo-reversed.pdf`) with no
  authoritative source. The file that got copied into place
  (`~/sites/mandarine_pl/assets/mandarine-logo-primary.pdf`) was a best guess based on
  filename and recency, not a confirmed match — the user should verify it's the right one.
- User asked to "clone the repo" for the logo, which turned out to mean the dotfiles repo
  (`~/.config`) — took a clarifying question to land on the right target since "the repo"
  was ambiguous with three candidates (this repo, dotfiles, a hypothetical logos repo).

**What we'll do differently:**
- Document the logo asset's canonical source in this repo (e.g. a README note or a copy
  tracked in dotfiles) so a fresh machine setup doesn't require hunting the disk for
  near-duplicate PDFs again. See NEXT-SESSION.md follow-ups.
