\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cheatsheet_test}[2016/11/09 Cheatsheet]
\LoadClass{extarticle}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{kvoptions}
\RequirePackage{kvsetkeys}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{extsizes}
\RequirePackage[top=.1in,left=.1in,right=.1in,bottom=.1in,landscape]{geometry}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{etoolbox}
\RequirePackage{environ}


\RequirePackage{lscape, pdflscape}
\RequirePackage{multicol} %
\RequirePackage{booktabs} % enhanced tables
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage{enumitem} % enhanced lists
\RequirePackage{wrapfig} % wrap text around figures
\RequirePackage{linegoal}
\RequirePackage{relsize}
\RequirePackage{rotating}

\RequirePackage{calc, ifthen, extramarks, latexsym, marvosym}
\RequirePackage[bottom]{footmisc}
\RequirePackage{graphicx}
\RequirePackage{pdfpages}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\SetupKeyvalOptions{
  family=cheatsheet,
  prefix=cheatsheet@,
  setkeys=\kvsetkeys,
}

\DeclareStringOption[3]{ncols}[3]

\DeclareVoidOption{hideproofs}
{%
  \NewEnviron{hide}{}
  \let\boxedProof\hidef
  \let\endboxedProof\endhide
}%

\ProcessKeyvalOptions*

\newcounter{chapter}[chapter]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand*{\cheatsheet@eval}[1]{%
  % check if kvoptions stored <value> in \<prefix>@<option>
  \@ifundefined{cheatsheet@#1}{%
    \PackageError{cheatsheet}{Evaluating unknown option '#1'}\@ehc
  }{%
    \wlog{Evaluating known option '#1'}
  }%
}
\cheatsheet@eval{ncols}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\AtEndPreamble
{
  	\newcommand\independent{\protect\mathpalette{\protect\independenT}{\perp}}
    \def\independenT#1#2{\mathrel{\setbox0\hbox{$#1#2$}%
    \copy0\kern-\wd0\mkern4mu\box0}}

	\pagestyle{empty}
	\makeatletter
	\renewcommand{\section}{\@startsection{section}{1}{0mm}%
                                {-1ex plus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%x
                                {\normalfont\large\bfseries}}
	\renewcommand{\subsection}{\@startsection{subsection}{2}{0mm}%
                                {-1explus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%
                                {\normalfont\normalsize\bfseries}}
	\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0mm}%
                                {-1ex plus -.5ex minus -.2ex}%
                                {1ex plus .2ex}%
                                {\normalfont\small\bfseries}}
	\makeatother

	\setcounter{secnumdepth}{0}

	\setlength{\parindent}{0pt}
	\setlength{\parskip}{0pt plus 0.5ex}

	\newcommand{\seperator}{\smallskip \hrule height 2pt \smallskip}

  \usepackage{mdframed}
	\mdfsetup{skipabove=0pt,skipbelow=0pt}
	\setlist[description]{leftmargin=0pt}

	\usepackage{titlesec}
	\titleformat{\section}
	{\color{blue}\normalfont\large\bfseries}
	{\color{blue}\thesection}{1em}{}

	\titleformat{\subsection}
	{\color{cyan}\normalfont\normalsize\bfseries}
	{\color{cyan}\thesection}{1em}{}
}

\AfterEndPreamble
{
  \let\oldemptyset\emptyset
  \let\emptyset\varnothing
  \raggedright\
  \footnotesize
  \begin{multicols*}{\cheatsheet@ncols}
  \setlength{\premulticols}{1pt}
  \setlength{\postmulticols}{1pt}
  \setlength{\multicolsep}{1pt}
  \setlength{\columnsep}{2pt}
}

\let\enddoc\enddocument
\def\enddocument{\end{multicols*}\enddoc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\endinput
