PDF_OUT="slides.pdf"

.PHONY: all html pdf clean

html:
	landslide -i conf/part-1.cfg

all:
	make html
	make pdf

pdf:
	landslide -i -t caktus-theme -r -d $(PDF_OUT) slides/

clean:
	rm *.html
	rm $(PDF_OUT)

export:
	make html
	zip -9ry slides.zip *
