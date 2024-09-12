
all:
	for page in pages/*.md; do \
		page_html=$$(basename $$page .md).html ; \
		pandoc --highlight-style=zenburn -s --mathjax -o $$page_html $$page ; \
	done
	