cribsheet-bjeldbak
==================

My document class, cribsheetbjeldbak, extends the extarticle document class (which adds a few things to the article class), extracting away tedious package settings and package loads, bundling them together making it easier to just get started writing notes for any exam. It is designed to include all the useful packages a student could need when making their crib/cheat sheet in any subject. Currently, I have only tested it with pdfTeX, but it can probably be used with XeTeX with a few modifications (remove ``\usepackage{fontspec}``).

This is my first attempt at making a class and I'm still learning what is valid to put in it. The fontspec and microtype packages bother me, since I want to keep my master file as clean as possible, but I also want to be able to use it with XeTeX, LuaTex, etc... I'm not sure how to tackle this problem yet.

# Usage

Clone this repository and copy the ``cribsheetbjeldbak.cls`` file to your LaTeX document root, and set it as your document class in your master file.

Clone and move class file like so:
```Shell
$ git clone git@github.com:martinbmadsen/cribsheet-bjeldbak.git
$ cp cribhseet-bjeldbak/cribsheetbjeldbak.cls ../
```

Then, include it in your master tex file. This could be ``master.tex`` or similar. A minimum working example (MWE):

```TeX
\documentclass{cribsheetbjeldbak}
\usepackage{bookman}

\title{CSE~XXX~Final~Crib~Sheet\\ \small 2014,~Standard~School}
\author{Martin~Bjeldbak~Madsen\\PID:~\texttt{XXXXX}}

\begin{document}
\section{Intra-domain routing}\label{sec:intra}
Admin sets edge costs. Methods to communicate network state: static,
link-state, and distance vector.

Bla bla, \cref{sec:intra} is a good section.
\end{document}

```


# Features

It adds and sets, among other things, the following:
  - Makes the cheat sheet landscape and 3 columns by default.
  - Sets font of your choosing (I like [Bookman](http://www.tug.dk/FontCatalogue/bookman/)) to 8pt.
  - Adds the [``nag``](http://www.ctan.org/tex-archive/macros/latex/contrib/nag) package so you keep your LaTeX. looking as clean, pretty, and correct as possible.
  - Includes awesome [``microtype``](http://ctan.org/pkg/microtype) package and sets settings to Siarhei Khirevich's, described [here](http://www.khirevich.com/latex/microtype/). Note: this requires pdfTeX.
  - Loads the amazing [``booktabs``](http://www.ctan.org/pkg/booktabs) package to easily typeset prettier tables.
  - Removes spacing between list items in both ``enumerate``and ``itemize``environments.
  - Reconfigures displaying of cribsheet info, automatically calling ``\maketitle`` for you.
  - Includes the [``cleveref``](http://www.ctan.org/pkg/cleveref) package so you easily can refer to sections via ``\cref``.

# Call for changes
If you have any additions or changes, please let me know, I'd love some feedback!
