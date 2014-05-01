BUILDID=$(shell date +%Y-%m-%d)

all: hello

hello:
	gcc hello-galaxy.c -o hello-galaxy
	@touch $@
	@echo $(BUILDID) > test

clean:
	rm -f hello-galaxy
