function sysimg --description 'create a new system image for julia'
  cd /Users/jakejing/switchdrive/juliawd/sysimage-precompile/ ; julia --trace-compile=traced.jl -e 'using Pkg, Atom, Juno; Pkg.test("Atom"),Pkg.test("Juno")'; julia build.jl
end

