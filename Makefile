.PHONY: build install test clean

build:
	go build -o flux-enhanced-cli .

install: build
	cp flux-enhanced-cli ~/.local/bin/ || cp flux-enhanced-cli /usr/local/bin/

test:
	go test ./...

clean:
	rm -f flux-enhanced-cli

