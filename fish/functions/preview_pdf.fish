function previewpdf --description 'preview pdf'
if test $argv = ""
	echo "Need filename."
else
	convert $argv /var/TMP/output.jpg; and imgcat /var/TMP/output*.jpg; and	rm -f /var/TMP/output*.jpg
end

