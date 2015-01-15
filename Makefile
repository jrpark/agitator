#
# Makefile for agitator FastAGI proxy
# Copyright (C) 2014 - 2015, Lefteris Zafiris <zaf.000@gmail.com>
#
# This program is free software, distributed under the terms of
# the GNU General Public License Version 3. See the LICENSE file
# at the top of the source tree.

all: agitator

agitator:
	go build .

clean:
	rm -f agitator

install: agitator
	install agitator /usr/local/bin/
	install -b -m 644 sample.conf /usr/local/etc/agitator.conf

install_deps:
	go get -u github.com/BurntSushi/toml