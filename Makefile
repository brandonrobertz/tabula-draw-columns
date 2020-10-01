PDF=

check_pdf:
	if [ -z "${PDF}" ]; then echo "USAGE: make prepare_pdf PDF=path/to.pdf"; exit 1; fi
	if ! [ -f "${PDF}" ]; then "File not found: ${PDF}"; exit 2; fi

prepare_pdf: check_pdf
	rm -rf out/
	./split_pdf '${PDF}'
	find out/ -iname '*.tif' -exec convert {} {}.png \;

serve:
	python -m http.server 8080
