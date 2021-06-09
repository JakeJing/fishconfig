function doi2bib --description "add a reference by doi id"
  echo >> /Users/jakejing/switchdrive/bib/references.bib
  curl -s "https://api.crossref.org/works/$argv/transform/application/x-bibtex" >> /Users/jakejing/switchdrive/bib/references.bib
  echo >> /Users/jakejing/switchdrive/bib/references.bib
end
