#!/usr/bin/env python
import os
import re


OUTFILE="./dist/filenames.js"


def sort_human(l):
    convert = lambda text: float(text) if text.isdigit() else text
    # alphanum = lambda key: [convert(c) for c in re.split('.*([0-9\.]+).*', key)]
    def alphanum(key):
        numbers = re.findall(f'[p\-\.\s]+([0-9]+)[\.\s]+', key)
        return int(numbers[-1])
    l.sort(key=alphanum)
    return l

if __name__ == "__main__":
    with open(OUTFILE, "w") as f:
        f.write("window.PDF_IMG_filenames = [\n")

        for (path, dirnames, filenames) in os.walk("./out"):
            sort_human(filenames)
            for filename in filenames:
                if not filename.endswith(".png"): continue
                cleaned = filename.replace("\"", "\\\"")
                f.write(f"\"/out/{cleaned}\",\n")
        f.write("];\n")
