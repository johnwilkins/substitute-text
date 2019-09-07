# Substitute Text

The `substitute-text.awk` AWK program searches for a text string across multiple files in a directory and replaces it with a replacement string. The program takes a path for the text files the program will modify, the path and program filename, a delimiter and an input file. The files included in this repository use the pipe symbol (`|`).

## Usage

    awk -v path="<path>" -f /path/to/substitute-text.awk -F'|' <input-file>

* `-v var=val` passes a variable to the script. Pass a `path` to directory containing the files that the program will search and replace.
* `-f <program-file>`. In this case, the program file is `substitute-text.awk` in the local directory.
* `-F` overrides default delimiter from space (`\s`). The input file uses (`|`).

## Input File Format

Each line of the input file represents an entry, and uses pipe-delimited format per the `-F` command argument. For example: 

    can't|cannot
    don't|do not
    
The `contractions-list.txt` file provides an example of the input file format.

## Known Issues

During testing, lines of the input file beginning with apostrophes generated errors. 
If the program does not find a match for one of the entries across all files in the path, it will print the following error:

    sed: no input files

The error output makes it appear that something has gone wrong. The program simply didn't find a file in the specified path that for a particular entry within the input file.

## Contraction Substitution

The `substitute-text.awk` program was developed to replace contractions with their fully-spelled out terms. For example, `can't`, becomes `cannot`. Contractions are not considered ESL friendly. Using a GUI editor, to replace a term can be cumbersome. **Replace All** helps expedite substitution within a file, but not across files. Additionally, substutition with search and replace is typically limited to a single term. The original input file for `substitute-text.awk` is `contractions-list.txt` and it replaces non-ambiguous contractions. The input file does not address ambiguous contractions such as `something's`, which could be spelled out as `something has` or `something is`. 

## OSP Attributes

The `osp-attributes.txt` file contains text strings that should be replaced with the asciidoctor variables incorporated into the `master.adoc` file by the `attributes.adoc` file.
