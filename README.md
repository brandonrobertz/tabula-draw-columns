# Tabula Columns Configurator

[Tabula](https://github.com/tabulapdf/tabula-java) is an amazing piece of software, but it's pretty annoying building the column delineation configuration for it. This simple script lets you place lines on an image of your PDF's pages and construct the config string.

    make start PDF=./path/to/PDF.pdf

Then go to `http://localhost:8080` in your browser.
To use it, click between each column, placing a line in its place. The configuration will be generated beneath the PDF image. Copy it and provide the string as the argument to tabula's `-c` option.

## Quickstart

You just need the `convert` command, Python 3 and optionally `make`. If you don't have `make` you'll have to run all the commands inside it!

Ubuntu:

    sudo apt install imagemagick # provides convert
    make start PDF=./path/to/PDF.pdf
