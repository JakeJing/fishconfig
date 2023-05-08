function new --description 'Create a new R or markdown template file'
  switch $argv
  case '*.Rmd'
    cp ~/git/knitr-markdown-engines/templates/Rmarkdown-scripts.Rmd $argv
  case '*.rmd'
    cp ~/git/knitr-markdown-engines/templates/Rmarkdown-scripts.Rmd $argv
  case '*.R'
    cp ~/git/knitr-markdown-engines/templates/Knitr-template.R $argv
  case '*.r'
    cp ~/git/knitr-markdown-engines/templates/Knitr-template.R $argv
  case '*.jl'
      cp /Users/jakejing/git/python-notebook-atom/template/template.jl $argv
  case '*.jmd'
      cp /Users/jakejing/git/python-notebook-atom/template/template.jmd $argv
  case '*.pmd'
    cp /Users/jakejing/git/python-notebook-atom/template/template.pmd $argv
  case '*.Pmd'
    cp /Users/jakejing/git/python-notebook-atom/template/template.pmd $argv
  case '*.py'
    cp /Users/jakejing/git/vscode-python-config/template/template.py $argv
  case '*.ipynb'
    cp /Users/jakejing/git/python-notebook-atom/template/julia-template.ipynb $argv
  case '*'
    echo 'filename is not correct!'
  end
end


