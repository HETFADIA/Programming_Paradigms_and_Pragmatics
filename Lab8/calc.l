%{
    char id[1000];
    int count=0;
    char op[1000];
    int bruh=0;
%}

%%
[+] {op[count++]='+';printf(" ");}
[-] {op[count++]='-';printf(" ");}
[*] {op[count++]='*';printf(" ");}
[/] {op[count++]='/';printf(" ");}
[=] {op[count++]='=';printf(" ");}
[0-9A-Za-z]+ {if(bruh==0){printf("Identifiers are: ");bruh=1;}{printf("%s",yytext);}}
"\n"  yyterminate();
%%

int yywrap(){}

int main()
{
    for(int i=0;i<1000;i++)
        id[i]='\0';
    for(int i=0;i<1000;i++)
        op[i]='\0';
    yylex();
    // fclose(yyin);
    // fclose(yyout);
    printf("\nOperators are:");
    for(int i=0;i<1000;i++){
        if(op[i]=='\0')
            break;
        printf(" %c",op[i]);
    }
    return 0;
}