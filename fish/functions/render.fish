function render --description 'render a Rmd'
    R -e "rmarkdown::render('$argv')"
end



