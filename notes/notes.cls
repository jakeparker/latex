
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}[2016/05/18 Note Taking Class]
\LoadClass{book}


\RequirePackage[letterpaper, margin=0.75in]{geometry}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{etoolbox}
\RequirePackage{environ}

%% <begin> https://tex.stackexchange.com/questions/47646/re-displaying-section-headings-after-page-breaks
% \RequirePackage{everyshi}
% \let\@section@title@\relax% Sectional heading storage
% \patchcmd{\@sect}% <cmd>
%   {\@xsect}% <search>
%   {\gdef\@section@title@{% Store sectional heading
%     {\noindent#6\@svsec#8\normalfont\ \smash{(continued)}}\par\bigskip}\@xsect}% <replace>
%   {}{}% <success><failure>
% \EveryShipout{%
%   \ifdim\pagetotal>\pagegoal% There is content overflow on this page
%     \aftergroup\@section@title@% Reprint/-insert sectional heading
%   \fi%
% }
%% <end>

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
  % https://tex.stackexchange.com/questions/66533/implicit-newline-at-the-end-of-each-paragraph
  % \setlength\parskip{\baselineskip}
  \setlength\parindent{0pt} % Removes all indentation from paragraphs
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
