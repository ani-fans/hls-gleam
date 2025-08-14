.PHONY: build

js-build:
	$(MAKE) -C ./hls-ffi/ build

build: js-build
	gleam build

check:
	gleam check

test:
	gleam test

test-w-build: build
	gleam test
