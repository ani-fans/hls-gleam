.PHONY: build

build:
	$(MAKE) -C ./hls-ffi/ build
	gleam build

test: build
	gleam test 
