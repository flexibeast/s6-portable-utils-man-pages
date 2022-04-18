DESTDIR  =
PREFIX   = /usr
MANPATH ?= $(PREFIX)/share/man
man1_dir = $(MANPATH)/man1

man1_targets = \
	s6-basename.1 \
	s6-cat.1 \
	s6-chmod.1 \
	s6-chown.1 \
	s6-clock.1 \
	s6-cut.1 \
	s6-dirname.1 \
	s6-dumpenv.1 \
	s6-echo.1 \
	s6-env.1 \
	s6-expr.1 \
	s6-false.1 \
	s6-format-filter.1 \
	s6-grep.1 \
	s6-head.1 \
	s6-hiercopy.1 \
	s6-linkname.1 \
	s6-ln.1 \
	s6-ls.1 \
	s6-maximumtime.1 \
	s6-mkdir.1 \
	s6-mkfifo.1 \
	s6-nice.1 \
	s6-nuke.1 \
	s6-pause.1 \
	s6-printenv.1 \
	s6-quote.1 \
	s6-quote-filter.1 \
	s6-rename.1 \
	s6-rmrf.1 \
	s6-seq.1 \
	s6-sleep.1 \
	s6-sort.1 \
	s6-sync.1 \
	s6-tai64ndiff.1 \
	s6-tail.1 \
	s6-test.1 \
	s6-touch.1 \
	s6-true.1 \
	s6-uniquename.1 \
	s6-unquote.1 \
	s6-unquote-filter.1 \
	s6-update-symlinks.1

all:
	@echo "Nothing to be done. Ready for 'make install'."

install:
	cd man1; install -D -m 0644 -t ${DESTDIR}${man1_dir} $(man1_targets)

uninstall:
	cd $(man1_dir); rm -f $(man1_targets)

.PHONY: all install uninstall
