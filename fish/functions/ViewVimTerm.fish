function ViewVimTerm --description 'open file either in termpdf or vim'
  # set the extension list for pdf docs
  set FileExtension .pdf .djvu .tif
  # check file extension to see whetehr it is included in the list
  if contains $(path extension $argv) $FileExtension
    termpdf.py $argv
  else
    nvim $argv
  end
end

# if test $(path extension $argv) = ".pdf"
  # # check the extension of a filename
    # termpdf.py $argv
  # else
    # vim $argv
  # end
# end

# if contains '*.pdf' $argv
## Previous version with switch ##
  # switch $argv
  # case '*.pdf'
    # termpdf.py $argv
  # case '*.png'
    # termpdf.py $argv
  # case '*.jpeg'
    # termpdf.py $argv
  # # case '*.md'
    # # vim $argv
  # # case '*.Rmd'
    # # vim $argv
  # # case '*.py'
    # # vim $argv
  # # case '*.js'
    # # vim $argv
  # # case '*.css'
    # # vim $argv
  # case '*'
    # vim $argv
  # end
# end


