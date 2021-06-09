header-includes:
  - \usepackage{textcomp}
  - \renewcommand{\thefigure}{S\arabic{figure}}
  - \renewcommand{\thetable}{S\arabic{table}}
  - \renewcommand{\thesection}{S\arabic{section}}
  - \renewcommand{\thesubsection}{S\arabic{section}.\arabic{subsection}}
  - \usepackage{tocloft}
  - \settowidth{\cftsecnumwidth}{S10x}
output:
  pdf_document:
   fig_crop: true
   fig_caption: true
   latex_engine: xelatex
   toc: true
   toc_depth: 4
   number_section: true
   pandoc_args: ["--variable=lof","--variable=lot","--bibliography=/Users/jakejing/switchdrive/bib/references.bib", "--csl=/Users/jakejing/switchdrive/bib/unified-style-linguistics.csl"]
-------------

\clearpage

