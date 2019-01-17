# Makefile for awesome-chatboot
# Author: Huan LI <zixia@zixia.net> github.com/huan

SOURCE_GLOB=$(wildcard bin/*.py chit-chat/*.py tests/*.py)

.PHONY: all
all : clean lint

.PHONY: clean
clean:
	echo "TODO: clean what?"

.PHONY: lint
lint: pylint pycodestyle flake8 mypy

.PHONY: install
install:
	bundle install
	bundle update

.PHONY: test
test:
	echo "test what?"

.PHONY: code
code:
	code .

.PHONY: serve
serve:
	bundle exec jekyll serve

.PHONY: fit-image
fit-image:
	./scripts/fit-image.sh assets/2019