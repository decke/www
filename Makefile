build:
	hugo

clean:
	rm -rf public/* resources/*

release:
	hugo --minify

ci:
	git submodule update --init themes/natrium
	hugo --minify

.PHONY:	build ci clean release
