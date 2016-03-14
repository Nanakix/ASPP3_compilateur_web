#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h
#include "tree.h"

struct tree;
struct attributes;
enum type {tree, word};//typage des noeuds: permet de savoir si un noeud construit un arbre ou s'il s'agit simplement de texte

struct attributes{
  char* key;//nom de l'attribut
  char* value;//valeur de l'attribut
  struct attributes* next;//attribut suivant
};

struct tree{
  char* label;//etiquette du noeud
  bool nullary;//noeud vide, par exemple <br/>
  bool space;//noeud suivi d'un espace
  enum type tp;//type du noeud. nullary doit être true si tp vaut word
  struct attributes* attr;//attribut du noeud
  struct tree* daughters;//fils gauche, qui doit être NULL si nullary est true
  struct tree* right;//frere droit
};
