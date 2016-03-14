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
div{ATTRIBUTS}?\{ {printf("CA MARCHE LE DIV\n"); }
//Href obligatoire pour a?
a{ATTRIBUTS}?\{ printf("CA MARCHE LE A\n"); }
br\/ {printf("br\n");}
%%



