# dwm-extras // extra content for dwm
# See LICENSE file for copyright and license details.

PREFIX = /usr
VERSION = 1.9

dist:
	mkdir -p dwm-extras-${VERSION}
	cp -R Makefile LICENSE src README.md dwm-extras-${VERSION}
	tar -cf dwm-extras-${VERSION}.tar dwm-extras-${VERSION}
	gzip dwm-extras-${VERSION}.tar
	rm -rf dwm-extras-${VERSION}
	rm -rf dwm-extras-${VERSION}

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	mkdir -p ${DESTDIR}${PREFIX}/share/dwm
	cp -f src/dwm* ${DESTDIR}${PREFIX}/bin ; chmod +x ${DESTDIR}${PREFIX}/bin/dwm*
	echo ${VERSION} > ${DESTDIR}${PREFIX}/share/dwm/dwm-extras-version

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/dwm
	rm -rf ${DESTDIR}${PREFIX}/share/dwm

help:
	@echo -- dwm-extras Makefile help --
	@echo
	@echo - Installation -
	@echo install: Installs dwm-extras. You may need to run this as root.
	@echo uninstall: Uninstalls dwm-extras. You may need to run this as root.
	@echo
	@echo - Releasing -
	@echo dist to create a tarball.

.PHONY: dist install uninstall help
