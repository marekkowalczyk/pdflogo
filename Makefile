PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

.PHONY: install uninstall lint check

install:
	install -d "$(BINDIR)"
	install -m 755 pdflogo "$(BINDIR)/pdflogo"

uninstall:
	rm -f "$(BINDIR)/pdflogo"

lint:
	shellcheck pdflogo

check:
	@command -v cpdf >/dev/null || { echo "cpdf not found in PATH"; exit 1; }
