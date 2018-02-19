
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2016/09/04 Homework Class]
\LoadClass{article}

\RequirePackage{etoolbox}
\RequirePackage{environ}
\RequirePackage{keyval}
\RequirePackage{kvoptions}
\RequirePackage{fancyhdr}

\DeclareStringOption[none]{course}[default]
\DeclareStringOption[none]{name}[default]
\DeclareStringOption[none]{andrewid}[default]
\DeclareStringOption[none]{recitation}[default]
\DeclareStringOption[none]{hwnum}[default]
\DeclareStringOption[none]{labname}[default]
\DeclareBoolOption[false]{pagenum}

% \DeclareOptionX<fam>{date}
%   {\renewcommand*{\date}{#1}}
%
\DeclareDefaultOption
{%
	\PassOptionsToClass{\CurrentOption}{article}
}%

\ProcessKeyvalOptions*{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                            defaults                               %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\header}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                            homework                               %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%
% name
%
\@namedef{homework@name@none}{\newcommand{\name}{}}
\@namedef{homework@name@default}{\newcommand{\name}{name}}
\define@key{homework}{name}{\newcommand{\name}{#1}}

%
% andrewid
%
\@namedef{homework@andrewid@none}{}
\@namedef{homework@andrewid@default}{andrewid}
\define@key{homework}{andrewid}{\newcommand{\andrewid}{#1}}

%
% recitation
%
\@namedef{homework@recitation@none}{}
\@namedef{homework@recitation@default}{section}
\define@key{homework}{recitation}{\newcommand{\recitation}{#1}}

%
% hwnum
%
\@namedef{homework@hwnum@none}{}
\@namedef{homework@hwnum@default}{hwnum}
\define@key{homework}{hwnum}{\newcommand{\hwnum}{#1}}

%
% labname
%
\@namedef{homework@labname@none}{}
\@namedef{homework@labname@default}{labname}
\define@key{homework}{labname}{\newcommand{\labname}{#1}}

%
% pagenum
%
\@namedef{homework@pagenum@true}{Page \thepage{} of~\pageref{mylastpagelabel}}
\@namedef{homework@pagenum@false}{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                            courses                                %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%
% none
%
\@namedef{homework@course@none}
{%
  \renewcommand{\header}{}
}%

%
% new
%
\@namedef{homework@course@default}
{%
  \renewcommand{\header}
  {
    \pagestyle{fancy}
    \fancyhf{}
    \lhead{\coursename}
    \chead{\name{} (\andrewid)}
    \rhead{Homework \hwnum}
    \cfoot{\pagenum}
  }
}%

%
% 15-210
%
\@namedef{homework@course@15210}
{%
  \renewcommand{\header}{
    \pagestyle{fancy}
    \fancyhf{}
    \lhead{15--210\ \ \labname}
    \chead{\name{} (\andrewid), Recitation \recitation}
    \rhead{\pagenum}
  }
}%

%
% 15-381
%
\@namedef{homework@course@15381}
{%
  \renewcommand{\header}
  {
    \pagestyle{fancy}
    \fanchdr{}
    \lhead{15--381}
    \chead{\name{} (\andrewid)}
    \rhead{Homework \hwnum}
  }
}%

%
% 15-388
%
\@namedef{homework@course@15388}
{%
  \renewcommand{\header}
  {
    \pagestyle{fancy}
    \fancyhdr{}
    \lhead{15--388}
    \chead{\name{} (\andrewid)}
    \rhead{Homework \hwnum}
  }
}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\AfterPreamble
{
	\header{}
}

\AtBeginDocument
{
	\let\oldemptyset\emptyset
	\let\emptyset\varnothing
}

\AtEndDocument
{
	\label{mylastpagelabel}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\endinput
