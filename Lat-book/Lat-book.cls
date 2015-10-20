\LoadClass[11pt, oneside]{book}   	
\RequirePackage{geometry}                		
\geometry{a4paper}                   		
\RequirePackage{graphicx}								
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{rotating}
\RequirePackage{titlesec}
\title{\Huge  \textsc{Book Title}}
\author{Author Name}
\date{}							

\titleformat
{\chapter}
[display]
{
\LARGE
%\scshape
}
{{\normalsize\textsf{\uppercase{ Chapter \thechapter}}}}
{0.0ex}
{
  \vspace{-1.5ex}
  \begin{flushright}
    \begin{scshape}
}[
    \end{scshape}  
  \end{flushright}
  \marginpar{
    \hspace{1cm} 
    \begin{turn}{-90}
      \textsc{Author} 
      \textsc{Name}   
    \end{turn} 
  }
  \thispagestyle{empty}
]


\def\INIT{%
\graphicspath{ {../\THIS/images/} {../}}
}