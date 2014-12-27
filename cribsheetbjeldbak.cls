% cribsheetbjeldbak
% Creates a landscape crib sheet with 3 columns
% 2014-12-18 martinbmadsen (at) gmail.com

\ProvidesClass{cribsheetbjeldbak}[2014/12/18 version 1.0 Crib Sheet Bjeldbak]
\NeedsTeXFormat{LaTeX2e}
\synctex=1

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}

%% Process given options
\ProcessOptions\relax

%% Load base
\LoadClass[8pt,landscape]{extarticle}

\RequirePackage{amsmath,amsthm,amsfonts,amssymb}
\RequirePackage[margin=0.5in]{geometry}

\usepackage[T1]{fontenc}

\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage{color,graphicx,overpic}
\RequirePackage{nag}
\RequirePackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=1100,stretch=10,shrink=10]{microtype}
\microtypecontext{spacing=nonfrench}
\AtBeginDocument{\begin{cols}\maketitle}
\AtEndDocument{\end{cols}}

% Turn off header and footer
\pagestyle{empty}

\setcounter{secnumdepth}{0} % Don't print section numbers

\setlength{\parindent}{0pt} % Don't indent paragraphs
\setlength{\parskip}{0pt plus 0.5ex}

\RequirePackage{enumitem} % for noitemsep in lists
\setlist{nolistsep} % no separation between list elems

\newcommand{\ex}[1]{Ex.: {#1}} % example
\newcommand{\var}[1]{\ensuremath{{\mathit{#1}}}} % variable
\newcommand{\fun}[2]{\var{{#1}({#2})}} % function with params

% multicol parameters
% These lengths are set only within the two main columns
\setlength{\columnsep}{1em}

% Typeset title to use less space
\RequirePackage{titling}

\setlength{\droptitle}{-5em} % raise title
\pretitle{\begin{center}\Large}
\posttitle{\end{center}\vspace{-2em}}

\preauthor{\begin{center}\small
            \begin{tabular}[t]{c}}
\postauthor{\end{tabular}\par\end{center}\vspace{-2em}}

\predate{\begin{center}\small}
\postdate{\end{center}}

% Define 3-column structure
\newenvironment{cols}{%
  \begin{multicols*}{3}
}{%
  \end{multicols*}
}

\RequirePackage{cleveref}

\endinput
