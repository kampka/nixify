.PHONY: install all

DEST_DIR ?= 
PREFIX ?= /usr/local

all:
	@echo "Nothing to be done for target 'all'. To install, use 'make install'"

install:
	install -D -m755 bin/nixify $(DEST_DIR)$(PREFIX)/bin/nixify
