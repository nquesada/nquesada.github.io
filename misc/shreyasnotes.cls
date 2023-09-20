\ProvidesClass{shreyasnotes}[2015/11/05 version 1.00 Shreyas Notes]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax
\LoadClass{article}

% Page layout
\RequirePackage[left=0.75in,right=0.75in,top=0.75in,bottom=0.75in]{geometry}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{babel}
\RequirePackage{graphicx}
\RequirePackage{bm}
\RequirePackage[bitstream-charter]{mathdesign}

\RequirePackage[backend=biber,
            hyperref=true,
            citestyle=numeric-comp,
            url=false,
            isbn=false,
            backref=true,
            maxcitenames=10,
            maxbibnames=10,
            sorting=none,
            block=none]{biblatex}
\renewbibmacro{in:}{}
\ExecuteBibliographyOptions{doi=false}
\newbibmacro{string+doi}[1]{%
  \iffieldundef{doi}{#1}{\href{http://dx.doi.org/\thefield{doi}}{#1}}}
\DeclareFieldFormat{title}{\usebibmacro{string+doi}{\mkbibemph{#1}}}
\DeclareFieldFormat[article]{title}{\usebibmacro{string+doi}{\mkbibquote{#1}}}

\RequirePackage[hyperfootnotes=false,
                colorlinks=true,
                urlcolor=blue,
                linkcolor=blue,
                citecolor=red]{hyperref}
\RequirePackage{siunitx}
\RequirePackage{amsmath}
\RequirePackage{overpic}
\RequirePackage{xcolor}
\RequirePackage{pict2e}
\RequirePackage{csquotes}
\RequirePackage{physics}
% \RequirePackage{amssymb}

\RequirePackage{caption,setspace}
\RequirePackage[toc,page]{appendix}

