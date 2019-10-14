build:
	hugo

clean:
	rm -rf public/* resources/*

deploy:
	git submodule update --init themes/natrium
	hugo -b $(URL) --minify

.PHONY:	build clean deploy
