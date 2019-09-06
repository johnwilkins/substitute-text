#substitute-text.awk takes an input file, searches for a match in the first column
#preceding the pipe | character and replaces it with the text in the second column
#following the pipe character.
BEGIN { print "Preparing to substitute text..."}
{
	system ("grep -rl \""$1"\" " path " | xargs sed -i \"s/"$1"/"$2"/g\" ");
}
END { print "Done. \"sed: no input files\" means that no match was found for a substitution. It is okay."}
