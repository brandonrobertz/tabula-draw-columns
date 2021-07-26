PDF=

check_pdf:
	if [ -z "${PDF}" ]; then echo "USAGE: make run PDF=path/to.pdf"; exit 1; fi
	if ! [ -f "${PDF}" ]; then "File not found: ${PDF}"; exit 2; fi

run: start
start: prepare_pdf serve

prepare_pdf: check_pdf
	rm -rf out/
	./split_pdf "${PDF}"
	find out/ -iname '*.tif' -exec convert {} {}.png \;
	ls out/
	./build_filenames_js.py

serve:
	python3 -m http.server 8080
