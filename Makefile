PREFIX ?= /usr/local
DOCDIR ?= $(PREFIX)/share/doc/rpipp

all:
    @echo Run \'make install\' to install rpipp.

install:
    @mkdir -p $(DESTDIR)$(PREFIX)/bin
    @cp -p rpipp $(DESTDIR)$(PREFIX)/bin/rpipp
    @mkdir -p $(DESTDIR)$(DOCDIR)
    @cp -p rpipp.1 $(DESTDIR)$(DOCDIR)
    @chmod 755 $(DESTDIR)$(PREFIX)/bin/rpipp

uninstall:
    @rm -rf $(DESTDIR)$(PREFIX)/bin/rpipp
    @rm -rf $(DESTDIR)$(DOCDIR)
