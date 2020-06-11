build:
	hugo --gc

clean:
	rm -rf public/* resources/*

deploy:
	git submodule update --init themes/coder
	hugo -b $(URL) --gc

.PHONY:	build clean deploy
