.PHONY: all submodules update-sync

all: submodules

submodules:
	git submodule sync --recursive
	git submodule update --init --recursive

update-sync:
	git pull
	git submodule sync --recursive
	git submodule update --init --recursive
