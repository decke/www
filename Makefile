build:
	hugo

clean:
	rm -rf public/* resources/*

release:
	hugo --minify

.PHONY:	build clean release
