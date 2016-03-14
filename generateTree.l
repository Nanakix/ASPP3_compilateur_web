%{
  #include "tree.h"
%}

%option noinput nounput

 
/* plusieurs underscores acceptés ?*/
ETIQUETTE (\_*[[:alpha:]][[:alnum:]]*)

/*Prendre en compte les carracteres speciaux (" etc)*/
ATTRIBUT {ETIQUETTE}=\"[[:alnum:]]*\"
ATTRIBUTS \[{ATTRIBUT}([[:space:]]+{ATTRIBUT})*\]



%%
//regles
div{ATTRIBUTS}?\{ {/*return div*/}
//Href obligatoire pour a?
a{ATTRIBUTS}?\{ /*return a*/ }
br\/ {printf("br\n");}
%%



