CFLAGS += -std=c99 -Wall -Wextra -pedantic -Wold-style-declaration
CFLAGS += -Wmissing-prototypes -Wno-unused-parameter
CFLAGS += -std=c99 -Wall -Wextra -Wmissing-prototypes -pedantic
PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
CC     ?= gcc

all: config.h sowm

config.h:
	cp config.def.h config.h

sowm: sowm.o
	$(CC) $(LDFLAGS) -O3 -o $@ $+ -lX11 -lXinerama

install: all
	install -Dm755 sowm $(DESTDIR)$(BINDIR)/sowm

clean:
	rm -f sowm *.o
