
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}[2016/05/18 Note Taking Class]
\LoadClass{book}


\RequirePackage[letterpaper, margin=0.75in]{geometry}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{etoolbox}
\RequirePackage{environ}

\DeclareOption{hideproofs}
{%
  \NewEnviron{hide}{}
  \let\boxedProof\hide
  \let\endboxedProof\endhide
}%

\DeclareOption*
{%
  \PassOptionsToClass{\CurrentOption}{book}
}%
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\AtBeginDocument
{
	\let\oldemptyset\emptyset
	\let\emptyset\varnothing
}

\AtEndPreamble
{
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

	% \usepackage{titlesec}
	% \titleformat{\section}
	% {\color{blue}\normalfont\large\bfseries}
	% {\color{blue}\thesection}{1em}{}
  %
	% \titleformat{\subsection}
	% {\color{cyan}\normalfont\normalsize\bfseries}
	% {\color{cyan}\thesection}{1em}{}
}

% numbered: chapter, section
% unnumbered: subsection, ...
\setcounter{secnumdepth}{1}
%
\providecommand{\seperator}{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\endinput
