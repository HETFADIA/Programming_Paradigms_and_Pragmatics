%{
    int active=0;
    int comments=0;
    int single=0;
    int multiple=0;
%}

%%
"//".+ {fprintf(yyout, "");active=1;single++;}
[\n]   {if(active==2)multiple++,fprintf(yyout, "");if(active==0)fprintf(yyout, "%s", yytext);if(active==1)active=0,fprintf(yyout, "");}
"/*"   {if(active!=2)active=2,multiple++,fprintf(yyout, "");}
"*/"   {if(active==2)active=1,fprintf(yyout, "");}
[^\n]  {if(active==0) fprintf(yyout, "%s", yytext); }
<<EOF>> yyterminate();
%%
  
int yywrap(){}
   
int main()
{
    extern FILE *yyin, *yyout;
    yyin = fopen("input2.txt", "r");
    yyout = fopen("output2.txt", "w");
    yylex();
    // fclose(yyin);
    // fclose(yyout);
    printf("\nSingle line comments: %d",single);
    printf("\nMultiple line comments: %d",multiple);

    return 0;
}
