.PHONY: clean
clean:
	rm -rf build

.PHONY: package
package: clean
	@echo "Version is $(VERSION)"
	mkdir -p build
	zip -r build/ergo-delta.deltaskin -j src/*

