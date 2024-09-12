
build:
	for page in pages/*.md; do \
		page_html=$$(basename $$page .md).html ; \
		pandoc -H tpl/headers.html -B tpl/body_before.html -A tpl/body_after.html \
			--css bootstrap/css/bootstrap.min.css --css style.css \
			--highlight-style=zenburn -M document-css=true --mathjax -o $$page_html $$page ; \
	done

watch: build
	bash watch.sh

clean:
	rm *.html