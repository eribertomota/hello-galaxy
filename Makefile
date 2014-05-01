BUILDID=$(shell date +%Y-%m-%d)
LDFLAGS="-Wl,--as-needed"

all: hello

hello:
	gcc $(LDFLAGS) hello-galaxy.c -o hello-galaxy
	@echo $(BUILDID) > test

clean:
	rm -f hello-galaxy
