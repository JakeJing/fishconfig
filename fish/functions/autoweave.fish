function autoweave --description 'automatic compile a .pmd file into pdf'
  set filename $argv
  set rootname (echo $filename | sed 's/\.[^.]*$//')

  switch $argv
  case '*.pmd'
    pweave -f pandoc $filename
	/usr/local/bin/pandoc +RTS -K512m -RTS "$rootname".md --to latex --from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash --output "$rootname".tex --table-of-contents --toc-depth 4 --template /Library/Frameworks/R.framework/Versions/3.6/Resources/library/rmarkdown/rmd/latex/default-1.17.0.2.tex --number-sections --highlight-style tango --pdf-engine xelatex --variable graphics=yes --variable=lof --variable=lot --bibliography=/Users/jakejing/switchdrive/bib/references.bib --csl=/Users/jakejing/switchdrive/bib/unified-style-linguistics.csl --variable 'geometry:margin=1in' --variable 'compact-title:yes'
    xelatex "$rootname".tex
    xelatex "$rootname".tex
    # need to compile 2 times to get the content page
    rm "$rootname".md "$rootname".tex "$rootname".aux "$rootname".lo* "$rootname".out "$rootname".toc
    open -a Preview "$rootname".pdf

  case '*.py'
    sed 's/^# %% /```python,/' $filename | sed 's/^# %%$/```/' > "$rootname".pmd
    pweave -f pandoc "$rootname".pmd

	# insert the header to the 3r row
	#  echo -e '4r /Users/jakejing/.config/fish/functions/header.md\nw' | ed "$rootname".md
    /usr/local/bin/pandoc +RTS -K512m -RTS "$rootname".md --to latex --from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash --output "$rootname".tex --table-of-contents --toc-depth 4 --template /Library/Frameworks/R.framework/Versions/3.6/Resources/library/rmarkdown/rmd/latex/default-1.17.0.2.tex --number-sections --highlight-style tango --pdf-engine xelatex --variable graphics=yes --variable=lof --variable=lot --bibliography=/Users/jakejing/switchdrive/bib/references.bib --csl=/Users/jakejing/switchdrive/bib/unified-style-linguistics.csl --variable 'geometry:margin=1in' --variable 'compact-title:yes'
    xelatex "$rootname".tex
    xelatex "$rootname".tex
    # need to compile 2 times to get the content page
    rm "$rootname".md "$rootname".tex "$rootname".aux "$rootname".lo* "$rootname".out "$rootname".toc
    open -a Preview "$rootname".pdf
  end
end
