.PHONY: build install
all:

build:
	docker build -t cajanzen/ffmpeg .
install:
	[ -d ~/bin ] && cp script/* ~/bin
