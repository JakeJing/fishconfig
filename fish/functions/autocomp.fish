function autocomp --description 'automatic compile a file whenever there is a change'
  echo $argv | entr -p /Users/jakejing/.config/fish/functions/compile.fish $argv
end

