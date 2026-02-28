.PHONY: all submodules update-sync

all: submodules

submodules:
	git submodule sync games/
	git submodule update --init games/

update-sync:
	@if git rev-parse --abbrev-ref HEAD > /dev/null 2>&1 && git remote | grep -q 'origin'; then \
		if git merge-base --is-ancestor HEAD @{u} && echo "$$?"; then \
			git pull; \
		else \
			echo "Branch not tracking a remote yet, skipping pull."; \
		fi; \
	fi
	git submodule sync games/
	git submodule update --init games/
