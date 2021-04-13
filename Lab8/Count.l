%{
    #include<stdio.h>
    int chars,words,spaces,lines;
    chars=0;
    spaces=0;
    words=0;
    lines=0;
    
%}
  
%%
[\n] {lines++;}
[ ]+ {chars += yyleng; spaces += yyleng;}
([a-zA-Z0-9_])+ {words++; chars += yyleng;}
. {chars++;}
<<EOF>> {lines++;}yyterminate();
%%
  
int yywrap(){}
   
int main()
{
    
    yyin = fopen("input.txt", "r");
    yylex();
    fclose(yyin);
    // we print the output
    printf("Spaces: %d\n",spaces);
    printf("Characters: %d\n",chars);
    printf("Words: %d\n",words);
    printf("Lines: %d\n",lines);

    return 0;
}
