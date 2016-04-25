%%
%% jp.cls 
%% 
%% LaTeX2e class file for Progress In Electromagnetics Research series
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pj}[2013/12/10 v0.0 LaTeX article class for PIER]
\newcommand\@ptsize{0}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagefalse
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
    
\special{papersize=8.5in,11in}%
\special{pdf: pagesize width 8.5in height 11in}%

\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\ExecuteOptions{letterpaper,final,twoside}
\ProcessOptions
\DeclareMathAlphabet{\bi}{OML}{cmm}{b}{it}
\DeclareMathAlphabet{\bcal}{OMS}{cmsy}{b}{n}
\DeclareMathAlphabet{\cal}{OMS}{cmsy}{n}{n}
\newcommand\mit{\mathit}

\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\if@twocolumn
  \setlength\parindent{12\p@}
\else
  \setlength\parindent{15\p@}
\fi
\setlength{\voffset}{-5.4mm}
\setlength{\hoffset}{-5.4mm}
\setlength\headheight{0\p@}
\setlength\headsep   {24\p@}
\setlength\topskip   {10\p@}
\setlength\footskip{20\p@}
\setlength\maxdepth{.5\topskip}
\setlength\@maxdepth\maxdepth
\setlength\textwidth{6.8in}
\setlength\textheight{9.1in}
\setlength\oddsidemargin  {8\p@}
\setlength\evensidemargin {8\p@}
\setlength\marginparwidth {72\p@}
\setlength\marginparsep {10\p@}
\setlength\marginparpush{5\p@}
\setlength\topmargin{\z@}
\setlength\footnotesep{6.65\p@}
\setlength{\skip\footins}  {9\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep       {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep   {20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep      {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@}
\setlength\@dblfptop{0\p@}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@}
\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}
\def\@listI{\leftmargin\leftmargini
            \parsep=\z@ 
            \topsep=5\p@ \@plus3\p@ \@minus3\p@
            \itemsep=3\p@ \@plus2\p@ \@minus\p@}
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
     \labelwidth\leftmarginii
     \advance\labelwidth-\labelsep
     \topsep=2\p@ \@plus2\p@ \@minus\p@
     \parsep=\z@
     \itemsep=\parsep}
\def\@listiii{\leftmargin\leftmarginiii
     \labelwidth\leftmarginiii
     \advance\labelwidth-\labelsep
     \topsep=\z@
     \parsep=\z@
     \partopsep=\z@
     \itemsep=\z@}
\def\@listiv {\leftmargin\leftmarginiv
     \labelwidth\leftmarginiv
     \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
     \labelwidth\leftmarginv
     \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
     \labelwidth\leftmarginvi
     \advance\labelwidth-\labelsep}


\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setlength\parindent{2em}
\setcounter{topnumber}{8}
\renewcommand\topfraction{1}
\setcounter{bottomnumber}{3}
\renewcommand\bottomfraction{.99}
\setcounter{totalnumber}{8}
\renewcommand\textfraction{0.01}
\renewcommand\floatpagefraction{.8}
\setcounter{dbltopnumber}{6}
\renewcommand\dbltopfraction{1}
\renewcommand\dblfloatpagefraction{.8}
%
\pretolerance=5000
\tolerance=8000
%
\newcommand{\pjheader}[1]{\def\@pjname{}}
\newcommand{\pheader}[1]{\def\@pjname{\bfseries\slshape Progress In Electromagnetics Research, #1}}
\newcommand{\plheader}[1]{\def\@pjname{\bfseries\slshape Progress In Electromagnetics Research Letters, #1}}
\newcommand{\pbheader}[1]{\def\@pjname{\bfseries\slshape Progress In Electromagnetics Research B, #1}}
\newcommand{\pcheader}[1]{\def\@pjname{\bfseries\slshape Progress In Electromagnetics Research C, #1}}
\newcommand{\pmheader}[1]{\def\@pjname{\bfseries\slshape Progress In Electromagnetics Research M, #1}}
%
% Headings for all pages apart from first
%
\def\ps@headings{\let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\small\bf\thepage\hfil\rightmark}%
      \def\@oddhead{\small\bf\leftmark\hfil\thepage}%
      \let\@mkboth\markboth
      \let\sectionmark\@gobble
      \let\subsectionmark\@gobble}
%
% Headings for first page
%
\def\ps@myheadings{\let\@oddfoot\@empty\let\@evenfoot\@empty
%    \let\@oddhead\@empty\let\@evenhead\@empty
    \def\@evenhead{\bf\itshape\small\@pjname\hfil}%for even heading
    \def\@oddhead{\bf\itshape\small\@pjname\hfil}%for odd heading
    \let\@mkboth\@gobbletwo
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble}
%
% \maketitle just ends page
%
\newcommand\maketitle{\newpage}
%
% Article titles
%
% Usage: \title[Short title]{Full title}
% [Short title] is optional; use where title is too long
% or contains footnotes, 50 characters maximum 
%
\renewcommand{\title}{\@ifnextchar[{\@stitle}{\@ftitle}}
\def\@stitle[#1]#2{\markboth{#1}{#1}\addcontentsline{toc}{chapter}{#2}%
    \thispagestyle{myheadings}%
    \vspace*{3pc}{\exhyphenpenalty=10000\hyphenpenalty=10000 
    \raggedright\noindent
    \begin{center}\bf\Large{#2}\end{center}}}
\def\@ftitle#1{\markboth{#1}{#1}\addcontentsline{toc}{chapter}{#1}%
    \thispagestyle{myheadings}%
    \vspace*{3pc}{\exhyphenpenalty=10000\hyphenpenalty=10000 
    \raggedright\noindent
    \bf\uppercase{{#1}}\par}}
%
% List of authors
%
% Usage \author{List of all authors}
% The short form excludes footnote symbols linking authors to addresses 
% and is used for running heads in printed version (but not on preprints)
%
\renewcommand{\author}{\@ifnextchar[{\@sauthor}{\@fauthor}}
\def\@sauthor[#1]#2{\markright{#1}    % for production only
   \vspace*{1.5pc}%
   {\normalsize\bf\raggedright#2}
   \smallskip}
\def\@fauthor#1{\markright{#1}        %for production only
   \vspace*{0.5pc}%
   {\begin{center}\normalsize\bf#1\end{center}}
   \smallskip}

\newcommand{\runningauthor}[1]{\markright{#1}}
\newcommand{\tocauthor}[1]{\addcontentsline{toc}{author}{#1}}


\newcommand{\address}[1]{%
   \vspace{6pt plus2pt minus2pt}
   {\rm\raggedright #1}}
%
% Abstract
%
\newenvironment{abstract}{%
      \vspace{16pt plus3pt minus3pt}
      \noindent{\bfseries \abstractname}---\rm\ignorespaces}

%
% Sections and Subsections
%
\setcounter{secnumdepth}{3}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thesection       {\arabic{section}}
\renewcommand\thesubsection    {\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection {\thesubsection.\arabic{subsubsection}}
\renewcommand\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph  {\theparagraph.\arabic{subparagraph}}
\def\@chapapp{Section}

\newcommand\section{\@startsection {section}{1}{\z@}%
                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                   {2.3ex \@plus.2ex}%
                   {\reset@font\normalsize\bfseries\raggedright}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                   {-3.25ex\@plus -1ex \@minus -.2ex}%
                   {1.5ex \@plus .2ex}%
                   {\reset@font\normalsize\bfseries\raggedright}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\reset@font\normalsize\itshape\raggedright}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\reset@font\normalsize\itshape}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\reset@font\normalsize\itshape}}
\def\@sect#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
     \let\@svsec\@empty\else
     \refstepcounter{#1}\edef\@svsec{\csname the#1\endcsname. }\fi
     \@tempskipa #5\relax
      \ifdim \@tempskipa>\z@
        \begingroup #6\relax
             \ifnum #2=1
             \noindent{\hskip #3\relax\@svsec}{\interlinepenalty \@M \uppercase{#8}\par}%
          \else
             \noindent{\hskip #3\relax\@svsec}{\interlinepenalty \@M #8\par}%
          \fi                     
        \endgroup
       \csname #1mark\endcsname{#7}\addcontentsline
         {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                      \protect\numberline{\csname the#1\endcsname}\fi
                    #7}\else
        \def\@svsechd{#6\hskip #3\relax  %% \relax added 2 May 90
                   \@svsec #8\csname #1mark\endcsname
                      {#7}\addcontentsline
                           {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                             \protect\numberline{\csname the#1\endcsname}\fi
                       #7}}\fi
     \@xsect{#5}}
%
\def\@ssect#1#2#3#4#5{\@tempskipa #3\relax
   \ifdim \@tempskipa>\z@
     \begingroup #4\noindent{\hskip #1}{\interlinepenalty \@M #5\par}\endgroup
   \else \def\@svsechd{#4\hskip #1\relax #5}\fi
    \@xsect{#3}}
%
% Acknowledgment
%
\def\ack{\section*{\uppercase{Acknowledgment}}\addcontentsline{toc}{section}{Acknowledgment}}
%
% References
%
\def\thebibliography#1{\section*{\uppercase{References}}\addcontentsline{toc}{section}{References}\par
 \list
 {\hfil \arabic{enumi}.\ }{\topsep=0\p@\parsep=0\p@
 \partopsep=0\p@\itemsep=2\p@
 \labelsep=5\p@\itemindent=0\p@
 \settowidth\labelwidth{[#1]}%{\small[#1]}%
 \leftmargin\labelwidth
 \advance\leftmargin\labelsep
 \advance\leftmargin -\itemindent
 \usecounter{enumi}}%\small
 \def\newblock{\ }
 \sloppy\clubpenalty4000\widowpenalty4000
 \sfcode`\.=1000\relax}
\let\endthebibliography=\endlist
%
%
% Footnotes: 
% Usage: \footnote{Text of footnote}
%        \footnote[3]{Text of footnote}
%
\setcounter{footnote}{0}
\long\def\@makefntext#1{\parindent 1em\noindent 
 \makebox[1em][l]{\footnotesize\rm$\m@th{\fnsymbol{footnote}}$}%
 \footnotesize\rm #1}
\def\@makefnmark{\hbox{${\fnsymbol{footnote}}\m@th$}}
\def\@thefnmark{\fnsymbol{footnote}}
\def\footnote{\@ifnextchar[{\@xfootnote}{\stepcounter{\@mpfn}%
       \begingroup\let\protect\noexpand
       \xdef\@thefnmark{\thempfn}\endgroup
     \@footnotemark\@footnotetext}}
\def\@xfootnote[#1]{\setcounter{footnote}{#1}%
   \addtocounter{footnote}{-1}\footnote}
\def\@fnsymbol#1{\ifnum\fnchoice=0 \ifcase#1\or^{}\or ^{}\or ^{}\or ^{\dagger}\or ^{\ddagger}\or ^{\S}\or
   ^{\|} \or ^{\P}\or ^{+}\or ^{*}\or ^{\sharp}
   \or ^{\dagger\dagger} \else\@ctrerr\fi\relax%
   \else ^{\the#1}\fi}
%
\setlength\leftmargini{2em}
\setlength\leftmarginii{2em}
\setlength\leftmarginiii{1.8em}
\setlength\leftmarginiv{1.6em}
\setlength\leftmarginv{1em}
\setlength\leftmarginvi{1em}
\setlength\leftmargin{\leftmargini}
\setlength\labelsep{0.5em}
\setlength\labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\roman{enumi}}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\theenumiii{\arabic{enumiii}}
\renewcommand\theenumiv{\Alph{enumiv}}
\newcommand\labelenumi{(\theenumi)}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{(\theenumiv)}
\renewcommand\p@enumii{(\theenumi)}
\renewcommand\p@enumiii{(\theenumi.\theenumii)}
\renewcommand\p@enumiv{(\theenumi.\theenumii.\theenumiii)}
\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{\normalfont\bfseries --}
\newcommand\labelitemiii{$\m@th\ast$}
\newcommand\labelitemiv{$\m@th\cdot$}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
%
%   Appendix
%
\newcounter{appsec}
\newcommand{\appendixx}[1]{\addtocounter{appsec}{1}\section*{APPENDIX \Alph{appsec}. \uppercase{#1}} 
\addcontentsline{toc}{section}{Appendix \Alph{appsec}. #1}
 \setcounter{equation}{0}
 \setcounter{figure}{0}
 \setcounter{table}{0}
 \setcounter{subsection}{0}
 \def\theequation{\Alph{appsec}\arabic{equation}}  
 \def\thetable{\Alph{appsec}\arabic{table}}
 \def\thefigure{\Alph{appsec}\arabic{figure}}
 \def\thesection{\Alph{appsec}} 
 \protected@edef\@currentlabel{\Alph{appsec}}%
}

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand\theequation{\arabic{equation}}
\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}{\footnotesize\rm\@float{figure}}%
    {\end@float\normalsize\rm}
\newenvironment{figure*}{\footnotesize\rm\@dblfloat{figure}}{\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}{\footnotesize\rm\@float{table}}%
   {\end@float\normalsize\rm}
\newenvironment{table*}{\footnotesize\rm\@dblfloat{table}}%
   {\end@dblfloat\normalsize\rm}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
%
% Added redefinition of \@caption so captions are not written to 
% aux file therefore less need to \protect fragile commands
%
\long\def\@caption#1[#2]#3{\par\begingroup
    \@parboxrestore
    \normalsize
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}
% 
\long\def\@makecaption#1#2{\vskip \abovecaptionskip 
{\bf #1.} #2
\vskip\belowcaptionskip}
\let\@portraitcaption=\@makecaption

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\newcommand{\pcal}{\@fontswitch{\relax}{\mathcal}}
\newcommand{\pmit}{\@fontswitch{\relax}{\mathnormal}}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg {2.55em}
\newcommand\@dotsep{200}
%
% equation and figure numbering with a,b,c,etc.
%
\newcounter{saveeqn}%
\newcommand{\alpheqn}{\setcounter{saveeqn}{\value{equation}}%
\stepcounter{saveeqn}\setcounter{equation}{0}%
\renewcommand{\theequation}
{\ifnum\theappsec = 0
    \mbox{\arabic{saveeqn}\alph{equation}}%
 \else
    \mbox{\Alph{appsec}\arabic{saveeqn}\alph{equation}}%
 \fi
}}%
\newcommand{\reseteqn}{\setcounter{equation}{\value{saveeqn}}%
\ifnum\theappsec=0
  \renewcommand{\theequation}{\arabic{equation}}%
\else
     \renewcommand{\theequation}{\Alph{appsec}\arabic{equation}}%
\fi
}%

\newcounter{savefig}%
\newcommand{\alphfig}{\setcounter{savefig}{\value{figure}}%
\stepcounter{savefig}\setcounter{figure}{0}%
\renewcommand{\thefigure}
{\ifnum\theappsec = 0
    \mbox{\arabic{savefig}\alph{figure}}%
 \else
    \mbox{\Alph{appsec}\arabic{savefig}\alph{figure}}%
 \fi
}}%
\newcommand{\resetfig}{\setcounter{figure}{\value{savefig}}
\ifnum\theappsec=0
  \renewcommand{\thefigure}{\arabic{figure}}%
\else
     \renewcommand{\thefigure}{\Alph{appsec}\arabic{figure}}%
\fi
}%
%
% Table of Contents
%
\setcounter{tocdepth}{3}
\def\@mystarttoc#1{%
  \begingroup
    \makeatletter
    \@input{\jobname.tocf}%
    \if@filesw
      \expandafter\newwrite\csname tf@#1\endcsname
      \immediate\openout \csname tf@#1\endcsname \jobname.#1\relax
    \fi
    \@nobreakfalse
  \endgroup}
\newcommand\mytableofcontents{\vspace{0.3in plus 0.1in minus 0.1in}\@mystarttoc{toc}\vspace{0.1in}}
\newcommand\tableofcontents{\vspace{0.3in plus 0.1in minus 0.1in}\@starttoc{toc}\vspace{0.1in}}
\newcommand\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty{\@secpenalty}%
    \addvspace{0.5em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss \phantom{#2}}\par
    \endgroup
  \fi}

\newcommand\l@chapter[2]{}
\newcommand\l@author[2]{}
\newcommand\l@subsection[2]{\vspace{2pt}\@dottedtocline{2}{1.5em}{2.2em}{#1}{}}
\newcommand\l@subsubsection[2]{\vspace{2pt}\@dottedtocline{3}{3.8em}{3.2em}{#1}{}}
\newcommand\l@paragraph[2]{}

\newcommand\listoffigures{%
    \section*{\listfigurename
      \@mkboth{\uppercase{\listfigurename}}%
              {\uppercase{\listfigurename}}}%
    \@starttoc{lof}%
    }
\newcommand\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \section*{\listtablename
      \@mkboth{\uppercase{\listtablename}}{\uppercase{\listtablename}}}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\section*{\indexname}]%
                \@mkboth{\uppercase{\indexname}}%
                        {\uppercase{\indexname}}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem  {\par\hangindent 40\p@}
\newcommand\subitem   {\par\hangindent 40\p@ \hspace*{20\p@}}
\newcommand\subsubitem{\par\hangindent 40\p@ \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\refname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\today{\number\day\space\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
%
\newcommand{\Tables}{\clearpage\section*{Tables and table captions}
    \def\fps@table{hp}\noappendix}
\newcommand{\Figures}{\clearpage\section*{Figure captions}
    \def\fps@figure{hp}\noappendix}
%
\newcommand{\Figure}[1]{\begin{figure}
  \caption{#1}
  \end{figure}}
%
\newcommand{\Table}[1]{\begin{table}
  \caption{#1}
  \lineup
  \item[]\begin{tabular}{@{}l*{15}{l}}}

\def\endTable{\end{tabular}\end{table}}
\let\endtab=\endTable
%
\newcommand{\fulltable}[1]{\begin{table}
  \caption{#1}
  \lineup
  \begin{tabular*}{\textwidth}{@{}l*{15}{@{\extracolsep{0pt plus 12pt}}l}}}
\def\endfulltable{\end{tabular*}\end{table}}
%
\pagestyle{headings}
\pagenumbering{arabic}      % Arabic page numbers
\raggedbottom
\onecolumn
\def\fnchoice{0}
\endinput

%% 
