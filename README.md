# Custom LaTeX Preamble (package)
....

## installation

### install mactex
 - `brew tap caskroom/cask`
 - `brew cask install mactex`

### install our latex-repository
1. Create the `~/library/texmf/tex` directory.
  - `cd ~/library`
  - `mkdir texmf`
  - `mkdir texmf/tex`

2. Clone the repository
  a. Clone the repo into `~/library/texmf/tex/<latex-repo-here>`
    - `git clone https://github.com/jakeparker/latex.git ~/library/texmf/tex`
  b. Clone the repo somewhere else
    - `git clone https://github.com/jakeparker/latex.git ~\<local-path-here>`
    - `ln -s ~/<local-path-here>/latex ~/library/texmf/tex/latex`

## usage
```latex
% in some *.tex file
\documentclass{notes}
\usepackage{preamble}

...

\begin{document}
  % <body>
\end{document}
```

or

```latex
% in some *.tex file
\documentclass{notes}
\usepackage[style=boxed]{preamble}

...

\begin{document}
  % <body>
\end{document}
```
