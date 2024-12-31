.PHONY: clean
clean:
	rm -rf build

.PHONY: package
package: clean
	mkdir -p build/src
	mkdir -p build/out
	cp -r src/* build/src/
	@echo "Version: $(VERSION) \nProject: ergo-delta-skin \nLink: https://github.com/athattayathu/ergo-delta-skin" > build/src/version.txt

	zip -r build/out/ergo-delta-$(VERSION).deltaskin -j build/src/*

