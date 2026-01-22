\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MiArticulo}[2026/01/21 Clase de Artículo v1.0]

\usepackage{etoolbox}

\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

\usepackage{graphicx}

\usepackage{lastpage}

\usepackage{geometry}
\geometry{
	margin=2.5cm,
	headheight=1cm,
	headsep=1cm,
	footskip=1.2cm,
}

\usepackage{iftex}
\ifPDFTeX
	\usepackage[utf8]{inputenc}
	\usepackage[T1]{fontenc}
\fi

\usepackage{setspace}
\setlength{\parindent}{3ex}
\setlength{\parskip}{\baselineskip}

\usepackage{mathpazo}

\usepackage{times}

\usepackage{amsmath, amsfonts, amssymb}

\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\sectionmark}[1]{\markright{#1}}
\fancyhead[L]{\textsl{\rightmark}}
\fancyhead[C]{}
\fancyhead[R]{\theauthor}
\fancyfoot[L]{}
\fancyfoot[C]{\thepage~de \pageref{LastPage}}
\fancyfoot[R]{}
\renewcommand{\headrulewidth}{0.4pt}

\usepackage{titlesec}
\titleformat{\section}
			[block]
			{\raggedright\LARGE\bfseries}
			{\thesection.}
			{1.5ex}
			{}
			[]
\titlespacing*{\section}
			  {0pt}
			  {\baselineskip}
			  {-0.5\baselineskip}
\titleformat{\subsection}
			[block]
			{\raggedright\Large\bfseries}
			{\thesubsection.}
			{1.5ex}
			{}
			[]
\titlespacing*{\subsection}
			  {0pt}
			  {0.75\baselineskip}
			  {-0.75\baselineskip}
\titleformat{\subsubsection}
			[block]
			{\raggedright\large\bfseries}
			{\thesubsubsection.}
			{1.5ex}
			{}
			[]
\titlespacing*{\subsubsection}
			  {0pt}
			  {0.5\baselineskip}
			  {-\baselineskip}

\usepackage{titletoc}
\setcounter{tocdepth}{3}
\renewcommand{\contentsname}{Tabla de Contenidos}
\titlecontents{section}
			  [0pt]
			  {\vspace{-0.25\baselineskip}}
			  {\thecontentslabel.~~}
			  {}
			  {\titlerule*[6pt]{.}\contentspage}
			  []
\titlecontents{subsection}
			  [0.5cm]
			  {\vspace{-\baselineskip}}
			  {\thecontentslabel.~~}
			  {}
			  {\titlerule*[6pt]{.}\contentspage}
			  []
\titlecontents{subsubsection}
			  [1cm]
			  {\vspace{-\baselineskip}}
			  {\thecontentslabel.~~}
			  {}
			  {\titlerule*[6pt]{.}\contentspage}
			  []

\usepackage[svgnames]{xcolor}

\usepackage{hyperref}
\hypersetup{
	colorlinks=true,
	urlcolor=black,
	linkcolor=black,
	citecolor=blue,
}

\usepackage{array}
\renewcommand{\arraystretch}{1.25}

\usepackage{multirow}

\usepackage{caption}
\captionsetup{skip=6pt, font=small, labelfont=bf, justification=centerlast, singlelinecheck=false}
\captionsetup[table]{name=Tabla, justification=raggedright, position=top}
\captionsetup[figure]{name=Figura}

\usepackage{enumitem}
\setlist{itemsep=0pt, topsep=0pt}
\renewcommand{\labelenumi}{\arabic{enumi}.-}
\renewcommand{\labelenumii}{\alph{enumii}.-}
\renewcommand{\labelenumiii}{\roman{enumiii}.-}
\renewcommand{\labelitemi}{\Large\raisebox{-1.5pt}{\textbullet}}
\renewcommand{\labelitemii}{\Large\raisebox{-1.5pt}{--}}
\renewcommand{\labelitemiii}{\Large\raisebox{-1.5pt}{-}}

\usepackage{titling}
\renewcommand{\today}{
	\number\day\ de\
	\ifcase\month\or
	enero\or febrero\or marzo\or abril\or mayo\or junio\or
	julio\or agosto\or septiembre\or octubre\or noviembre\or diciembre\fi
	\ de\ \number\year
}

\renewcommand{\maketitle}{
	\begin{center}
		\singlespacing\Large\scshape\bfseries\thetitle\par
		\large\mdseries\upshape\theauthor\par
		\normalsize\thedate
	\end{center}
}
