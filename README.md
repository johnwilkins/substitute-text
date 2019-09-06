# Substitute Text

The substitute text AWK program searches and replaces multiple text entries across multiple files in a directory. The program takes a path, a program file, a delimiter and an input file.

## Usage

    awk -v path="<path>" -f substitute-text.awk -F'|' <input-file>

* `-v var=val` passes a variable to the script. Pass a `path` to directory containing the files that the program will search and replace.
* `-f <program-file>`. In this case, the program file is `substitute-text.awk` in the local directory.
* `-F` overrides default delimiter from space (`\s`). The input file uses (`|`).
