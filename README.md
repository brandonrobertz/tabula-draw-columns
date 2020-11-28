# Tabula Columns Configurator

![Tabula Columns Configurator screenshot](https://github.com/brandonrobertz/tabula-draw-columns/blob/main/screenshot.png)

[Tabula](https://github.com/tabulapdf/tabula-java) is an amazing piece of software, especially when it Just Works. But, if you use it enough, eventually you have to hold its hand and tell it where all the columns are on a page in pixels or percent of the page. This simple script lets you produce that configuration string by placing lines on an image of your PDF from your browser.

## Quickstart

Run the command:

    make start PDF=./path/to/PDF.pdf

Then go to `http://localhost:8080` in your browser.
To use it, click between each column, placing a line in its place. The configuration will be generated beneath the PDF image. Copy it and provide the string as the argument to tabula's `-c` option. You can move between the pages of your PDF by clicking the Next button. The clipboard button will copy the string to your clipboard.

You just need the `convert` command, `gs` command, Python 3 and optionally `make`.

Ubuntu dependencies:

    sudo apt install imagemagick make ghostscript

If you don't have `make`, but you do have `convert` and `gs` you can still run everything by running all the commands inside the `Makefile` individually.
