function getdoi --description "get doi from a pdf"
  pdftotext "$argv" - | grep -i "doi"

end
