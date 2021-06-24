%{
    int add=0;
    int sub=0;
    int mul=0;
    int divi=0;
%}

%%
[+] {add++;}
[-] {sub++;}
[*] {mul++;}
[/] {divi++;}
%%
  
int yywrap(){}
   
int main()
{
    extern FILE *yyin, *yyout;
    yyin = fopen("input3.txt", "r");
    yyout = fopen("output3.txt", "w");
    yylex();
    // fclose(yyin);
    // fclose(yyout);
    printf("\nAddition operators are: %d",add);
    printf("\nSubtraction operators are: %d",sub);
    printf("\nMultiplication operators are: %d",mul);
    printf("\nDivision operators are: %d",divi);

    return 0;
}