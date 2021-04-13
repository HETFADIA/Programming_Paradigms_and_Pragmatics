%{
    #include "y.tab.h"
    #include <stdlib.h>
%}

%%

[aA] return A;
[bB] return B;
\n return NL;
[^aAbB] return yytext[0];

%%

int yywrap(void){
    return 1;
}