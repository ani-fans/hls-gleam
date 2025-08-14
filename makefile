.PHONY: build

js-build:
	$(MAKE) -C ./hls-ffi/ build

build: js-build
	gleam build

check:
	gleam check

test: build
	gleam test 
