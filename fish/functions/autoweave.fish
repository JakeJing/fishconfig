function autoweave --description 'automatic compile a .py and .pmd file into pdf'
  set filename $argv
  set rootname (echo $filename | sed 's/\.[^.]*$//')

  switch $argv
  case '*.jmd'
    set DT (date +"%d.%m.%Y")
    sed 's/^```julia; /# %% /' $filename | sed 's/^```$/# %%/' | sed "s/^date.*/date: $DT/" > "$rootname".jl
	#sed "s/^date.*/date: $DT/" $filename > "$rootname"-temp.jmd
	# it will retrun a .md file
    julia /Users/jakejing/.config/fish/functions/jweave.jl "$rootname".jmd
	perl -0pi -w -e 's/lstlisting}\n\(/lstlisting}[backgroundcolor=\\\color{shadecolor}]\n(/g;' "$rootname".tex

	# julia /Users/jakejing/.config/fish/functions/jweave.jl "$rootname"-temp.jmd
	# extract first 23 lines and save it as a headfile.out
	#sed -n 1,23p "$rootname"-temp.jmd > headfile.out
	# insert a headfile.out into the markdown file
	#echo -e '0r headfile.out\nw' | ed "$rootname"-temp.md
	#/usr/local/bin/pandoc +RTS -K512m -RTS "$rootname"-temp.md --to latex --from markdown+autolink_bare_uris+tex_math_single_backslash --output "$rootname"-temp.tex --self-contained --table-of-contents --toc-depth 4 --number-sections --highlight-style tango --pdf-engine xelatex --variable graphics --lua-filter /Library/Frameworks/R.framework/Versions/3.6/Resources/library/rmarkdown/rmd/lua/pagebreak.lua --lua-filter /Library/Frameworks/R.framework/Versions/3.6/Resources/library/rmarkdown/rmd/lua/latex-div.lua --variable=lof --variable=lot --bibliography=/Users/jakejing/switchdrive/bib/references.bib --csl=/Users/jakejing/switchdrive/bib/unified-style-linguistics.csl --variable 'geometry:margin=1in'
    #mv "$rootname"-temp.tex "$rootname".tex
	xelatex "$rootname".tex
    xelatex "$rootname".tex
	#rm "$rootname"-temp.md "$rootname".tex "$rootname".aux "$rootname".lo* "$rootname".out "$rootname".toc headfile.out "$rootname"-temp.jmd "*.log"

	rm "$rootname".tex "$rootname".aux "$rootname".lo* "$rootname".out "$rootname".toc headfile.out *.log
    open -a Preview "$rootname".pdf
  case '*.Rmd'
    Rscript -e "rmarkdown::render('$filename', output_format = 'pdf_document')"
    open -a Preview "$rootname".pdf
  #case '*.jl'
    #set DT (date +"%d.%m.%Y")
    #sed 's/^# %% /```julia; /' $filename | sed 's/^# %%$/```/' | sed "s/^date.*/date: $DT/" > "$rootname".jmd
	# it will retrun a .md file
	#julia /Users/jakejing/.config/fish/functions/jweave.jl "$rootname".jmd
    # extract first 23 lines and save it as a headfile.out
	#sed -n 1,23p "$rootname".jmd > headfile.out
	# insert a headfile.out into the markdown file
	#echo -e '0r headfile.out\nw' | ed "$rootname".md

	#/usr/local/bin/pandoc +RTS -K512m -RTS "$rootname".md --to latex --from markdown+autolink_bare_uris+tex_math_single_backslash --output "$rootname".tex --self-contained --table-of-contents --toc-depth 4 --number-sections --highlight-style tango --pdf-engine xelatex --variable graphics --lua-filter /Library/Frameworks/R.framework/Versions/3.6/Resources/library/rmarkdown/rmd/lua/pagebreak.lua --lua-filter /Library/Frameworks/R.framework/Versions/3.6/Resources/library/rmarkdown/rmd/lua/latex-div.lua --variable=lof --variable=lot --bibliography=/Users/jakejing/switchdrive/bib/references.bib --csl=/Users/jakejing/switchdrive/bib/unified-style-linguistics.csl --variable 'geometry:margin=1in'
    #xelatex "$rootname".tex
    #xelatex "$rootname".tex
	#rm "$rootname".md "$rootname".tex "$rootname".aux "$rootname".lo* "$rootname".out "$rootname".toc headfile.out
    #open -a Preview "$rootname".pdf
  case '*.pmd'
    # set DT (date +"%d.%m.%Y")
    # sed 's/^```python,/# %% /' $filename | sed 's/^```/# %% /' | sed "s/^date.*/date: $DT/" > "$rootname".py
    # sed "s/^date.*/date: $DT/" $filename > "$rootname"-temp.pmd
    pweave -f pandoc "$rootname".pmd
	# It seems that Knit Rstudio can sometimes update the template (this is thge latest one via lua)
	/usr/local/bin/pandoc +RTS -K512m -RTS "$rootname".md --to latex --from markdown+autolink_bare_uris+tex_math_single_backslash --output "$rootname".tex --self-contained --table-of-contents --toc-depth 2 --number-sections --highlight-style tango --variable graphics --wrap preserve --variable 'geometry:margin=1in' --variable tables=yes --standalone -Mhas-frontmatter=false
	#/usr/local/bin/pandoc +RTS -K512m -RTS "$rootname"-temp.md --to latex --from markdown+autolink_bare_uris+tex_math_single_backslash --output "$rootname"-temp.tex --self-contained --table-of-contents --toc-depth 4 --number-sections --highlight-style tango --pdf-engine xelatex --variable graphics --lua-filter /Library/Frameworks/R.framework/Versions/3.6/Resources/library/rmarkdown/rmd/lua/pagebreak.lua --lua-filter /Library/Frameworks/R.framework/Versions/3.6/Resources/library/rmarkdown/rmd/lua/latex-div.lua --variable=lof --variable=lot --bibliography=/Users/jakejing/switchdrive/bib/references.bib --csl=/Users/jakejing/switchdrive/bib/unified-style-linguistics.csl --variable 'geometry:margin=1in'
    mv "$rootname"-temp.tex "$rootname".tex
    xelatex "$rootname".tex
    xelatex "$rootname".tex
    # need to compile 2 times to get the content page
    rm "$rootname".md "$rootname".tex "$rootname".aux "$rootname".lo* "$rootname".out "$rootname".toc "$rootname"-temp.pmd "$rootname"-temp.md "$rootname"-temp.tex
    open -a skim "$rootname".pdf

  case '*.py'
    if test -d venv
	  source venv/bin/activate.fish
	end

    set DT (date +"%d.%m.%Y")
    sed  's/^# ~~ //' $filename | sed 's/^# %% /```python,/' | sed 's/^# %%$/```/' | sed "s/^date.*/date: $DT/" > "$rootname".pmd

	pweave -f pandoc "$rootname".pmd

	# insert the header to the 3r row
	#  echo -e '4r /Users/jakejing/.config/fish/functions/header.md\nw' | ed "$rootname".md
    /usr/local/bin/pandoc +RTS -K512m -RTS "$rootname".md --to latex --from markdown+autolink_bare_uris+tex_math_single_backslash --output "$rootname".tex --self-contained --table-of-contents --toc-depth 4 --number-sections --highlight-style tango --variable graphics --wrap preserve --variable 'geometry:margin=1in' --variable tables=yes --standalone -Mhas-frontmatter=false

	xelatex "$rootname".tex
    xelatex "$rootname".tex
    # need to compile 2 times to get the content page
    rm "$rootname".md "$rootname".tex "$rootname".aux "$rootname".lo* "$rootname".out "$rootname".toc
    open -a skim "$rootname".pdf # repalce "Preview"

	if test -d venv
	  deactivate
	end

  end
end
