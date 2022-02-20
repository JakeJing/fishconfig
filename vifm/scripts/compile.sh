#!/bin/sh

FILE=$1
pandoc --template=simple.latex --pdf-engine=xelatex -F /usr/local/bin/glosses.py -F pandoc-citeproc -M secPrefix=Section -N $FILE -o mainr.tex 2> pandoc-errors.txt

sed -e 's/\\leavevmode/\\leavevmode\\hangindent=.7cm/g' mainr.tex | gsed -e 's/.*\hypertarget{references}.*/%TC:ignore\n\n&/' -e 's/.*\end{document}.*/%TC:endignore\n&/' > main.tex

xelatex -output-driver="xdvipdfmx -E -q" -synctex=0 main.tex
xelatex -output-driver="xdvipdfmx -E -q" -synctex=0 main.tex


if [ -f mainr.tex ];then
	rm mainr.tex
fi

if [ -f main.out ]; then
	rm main.out
fi


if [ -f main.log ]; then
	rm main.log
fi


if [ -f main.aux ]; then
	rm main.aux
fi

#if [ -f main.tex ]; then
#	rm main.tex
#fi
#
if [ -f texput.log ]; then
	rm texput.log
fi

open main.pdf
# /Users/jakejing/.config/vifm/scripts/termpdf.py main.pdf
