PDF=

prepare_pdf:
	./split_pdf '${PDF}'
	find out/ -iname '*.tif' -exec convert {} {}.png \;

serve:
	python -m http.server 8080
