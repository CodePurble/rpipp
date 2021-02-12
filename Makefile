PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
MANDIR=$(PREFIX)/man/man1
DOCDIR=$(PREFIX)/share/rpipp/doc

all:
	@echo "Run 'make install' to install rpipp."

install:
	@mkdir -vp $(BINDIR)
	@cp -vp ./rpipp $(BINDIR)/rpipp
	@mkdir -vp $(DOCDIR)
	@cp -vp ./README.adoc $(DOCDIR)/README.adoc
	@mkdir -vp $(MANDIR)
	@cp -vp ./doc/rpipp.1 $(MANDIR)/rpipp.1
	@chmod 755 $(BINDIR)/rpipp
	@mandb -q

uninstall:
	@rm -rfv $(BINDIR)/rpipp
	@rm -rfv $(MANDIR)/rpipp.1
	@rm -rdfv $(PREFIX)/share/rpipp
	@mandb -q
