function pdf2png --description 'convert pdfs to pngs in a folder'
  convert -density 300 *.pdf -quality 100 -set filename:basename "%[basename]" "%[filename:basename].png"
end
