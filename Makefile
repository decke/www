build:
	hugo

clean:
	rm -rf public/* resources/*

deploy:
	git submodule update --init themes/coder
	hugo -b $(URL)

.PHONY:	build clean deploy
