function rd --description 'render an Rmarkdown file'
   Rscript -e "rmarkdown::render('$argv')"
end
