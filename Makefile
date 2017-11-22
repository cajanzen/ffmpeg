.PHONY: build install
all:
	@echo "read the Makefile contents"

build:
	docker build -t cajanzen/ffmpeg .
install:
	# this only makes sense if ~/bin is in your path
	[ -d ~/bin ] && cp script/* ~/bin
