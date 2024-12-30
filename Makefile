VERSION := "1.0.0"
.PHONY: clean
clean:
	rm -rf build

.PHONY: package
package: clean
	mkdir -p build
	zip -r build/ergo-delta-$(VERSION).deltaskin -j src/*
