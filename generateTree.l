%{
  #include "tree.h"
%}
 
 // plusieurs underscores acceptés ?
ETIQUETTE (\_*[[:alpha:]][[:alnum:]]*)

//Prendre en compte les carracteres speciaux (" etc)
ATTRIBUT {ETIQUETTE}=\"[[:alnum:]]+\"
ATTRIBUTS \[{ATTRIBUT}([[:space:]]+{ATTRIBUT})*\]



%%
//regles
div{ATTRIBUTS}?\{

%%



