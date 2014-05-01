BUILDID=$(shell date +%Y-%m-%d)

all: hello

hello:
	gcc hello-galaxy.c -o hello-galaxy
	@echo "$(BUILDID) - $@" > $@
	@echo $(BUILDID) > test

clean:
	rm -f hello-galaxy
