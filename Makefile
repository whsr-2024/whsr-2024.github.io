
build:
	for page in pages/*.md; do \
		page_html=$$(basename $$page .md).html ; \
		pandoc -H tpl/headers.html -B tpl/body_before.html -A tpl/body_after.html \
			--highlight-style=zenburn --mathjax -o $$page_html $$page ; \
	done

watch: build
	bash watch.sh

clean:
	rm *.html