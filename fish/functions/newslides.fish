function newslides --description 'Create a new Rmarkdown slide for presentation'
  switch $argv
  case '*.Rmd'
    cp ~/git/knitr-markdown-engines/templates/Rmarkdown-slides.Rmd $argv
  case '*.rmd'
    cp ~/git/knitr-markdown-engines/templates/Rmarkdown-slides.Rmd $argv
  case '*'
    echo 'filename is not correct!'
  end
end


