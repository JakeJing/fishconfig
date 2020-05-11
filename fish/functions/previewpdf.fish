function previewpdf --description 'Open a pdf via Preview.app'
  pdftoppm -png -f 1 -singlefile $argv /var/TMP/output; and imgcat /var/TMP/output*.png; and rm -f /var/TMP/output*.jpg
end

