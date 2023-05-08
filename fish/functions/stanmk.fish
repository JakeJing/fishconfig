function stanmk --description 'Compile a stan model file at the current directory'
  # note: the modelname should be bare name without *.stan
  set dirname $PWD
  pushd /Users/jakejing/switchdrive/Harmony-evolution/cmdstan-2.29.2; and make "$dirname"/$argv; popd
end

