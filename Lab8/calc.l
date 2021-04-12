%{
    char id[1000];
    int count=0;
    char op[1000];

%}

%%
[+] {op[count++]='+';}
[-] {op[count++]='-';}
[*] {op[count++]='*';}
[/] {op[count++]='/';}
[=] {op[count++]='=';}
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
    
    for(int i=0;i<1000;i++){
        if(op[i]=='\0')
            break;
        
        printf("\nOperators are: %c",op[i]);
    }
    return 0;
}
