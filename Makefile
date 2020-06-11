build:
	hugo --gc --minify

clean:
	rm -rf public/* resources/*

deploy:
	git submodule update --init themes/coder
	hugo -b "$(URL)" --gc --minify

.PHONY:	build clean deploy
