function rd --description 'render an Rmarkdown file'
   Rscript -e "rmarkdown::render('$argv')"
   #Rscript -e "rmarkdown::render('$argv', clean = FALSE)"
end
