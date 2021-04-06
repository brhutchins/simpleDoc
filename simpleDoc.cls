\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simpleDoc}[2021/03/23 SimpleDoc LaTeX class]

% Inherit article
    \DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
    \ProcessOptions\relax

    \LoadClass{article}

% Misc packages
    \RequirePackage{parskip}
    \RequirePackage{fancyhdr}
    \RequirePackage{attrib}
    \RequirePackage{etoolbox}
    \RequirePackage{setspace}

% Margins
    \RequirePackage{geometry}
    \geometry{a4paper, left=24mm, top=24mm, right=24mm, bottom=24mm}

% Style
    \setlength{\parskip}{1.5em plus 2pt minus 2pt}
    \linespread{1}

% Colours
    \RequirePackage[dvipsnames]{xcolor}

    \definecolor{links}{RGB}{25, 159, 178}
    \definecolor{emph}{RGB}{242, 131, 170}
    \definecolor{emph2}{RGB}{117, 197, 208}

% Links
    \RequirePackage{hyperref}
    \hypersetup{colorlinks=true, linkcolor=links}
    \urlstyle{same}

% Blockquote
    \AtBeginEnvironment{quote}{\small}

% Headers
    \pagestyle{fancy}
    \renewcommand{\headrulewidth}{0pt}
    \rhead{}
    \lhead{}

% Lists
    \RequirePackage{enumitem}
    \setlist[itemize]{noitemsep}
    \setlist[enumerate]{noitemsep}

% Commands

    \renewcommand{\maketitle}{%
        \begin{flushleft}
            \Huge\bfseries\@title\vspace{-0.3em}

            \small\normalfont\@author \vspace{-1.8em}

            \small\normalfont\@date \vspace{2em}
        \end{flushleft}
    }

    \renewcommand{\section}{%
      \@startsection
      {section}{1}{0pt}{-0.5ex plus -1ex minus -.2ex}%
      {1pt}{\Large\bfseries}%
    }

    \renewcommand{\subsection}{%
      \@startsection
      {subsection}{2}{0pt}{-0.5ex plus -1ex minus -.2ex}%
      {1pt}{\large\bfseries}%
    }

    \renewcommand{\subsubsection}{%
      \@startsection
      {subsubsection}{3}{0pt}{-0.5ex plus -1ex minus -.2ex}%
      {1pt}{\normalsize\bfseries}%
    }

    % \renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}

% Remove space between headings and text
%% There must be a more elegant way of doing this, within the definition of \section
%% But I haven't figured out an alternative yet
    % \RequirePackage{titlesec}
    % \titlespacing\section{0pt}{*1}{-\parskip}
    % \titlespacing\subsection{0pt}{*1}{-\parskip}
    % \titlespacing\subsubsection{0pt}{*1}{-\parskip}
