build: themes/natrium
	hugo

clean:
	rm -rf public/*

release:
	hugo --minify

themes/natrium:
	git clone https://github.com/mobybit/hugo-natrium-theme themes/natrium

.PHONY:	build clean release
