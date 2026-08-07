# Next Session

## Immediate
- Nothing blocking. Verify `~/.config/logos/mandarine-logo-small.pdf` is actually the
  intended logo — it was picked by best guess (see AAR 2026-07-29) from among several
  near-duplicate candidates on disk, not confirmed by the user.

## Follow-ups opened by this session
- The logo asset the script depends on isn't tracked anywhere (not in this repo, not in
  dotfiles). Consider documenting its canonical source in a README, or adding it to the
  dotfiles repo, so it survives a fresh machine setup without a disk-wide search.

## Carried over
- (none — first close for this repo)

## Current state
- `pdflogo` installed at `/usr/local/bin/pdflogo` (`pdflogo --version` → `1.0.0`).
- `Makefile` present with `install`/`uninstall`/`lint`/`check` targets.
- `shellcheck` installed via Homebrew; script passes clean.
- Logo file present at `~/.config/logos/mandarine-logo-small.pdf` (copied from
  `~/sites/mandarine_pl/assets/mandarine-logo-primary.pdf` — unverified, see Immediate).

## Process notes
- (none promoted yet — first occurrence of any lesson this repo)
