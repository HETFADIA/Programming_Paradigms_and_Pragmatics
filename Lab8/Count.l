%{
    // #include<stdio.h>
    int chars=0,words=0,spaces=0,lines=0;
    
%}
  
%%

[ ]+ {chars += yyleng; spaces += yyleng;}
[\n] {lines++;}
([a-zA-Z0-9])+ {words++; chars += yyleng;}
<<EOF>> {lines++;}yyterminate();
%%
  
int yywrap(){}
   
int main()
{
    extern FILE *yyin, *yyout;
    yyin = fopen("input.txt", "r");
    yylex();
    fclose(yyin);

    printf("\nCharacters: %d\n",chars);
    printf("Words: %d\n",words);
    printf("Spaces: %d\n",spaces);
    printf("Lines: %d\n",lines);

    return 0;
}