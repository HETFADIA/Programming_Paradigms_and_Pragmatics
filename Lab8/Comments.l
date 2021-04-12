%{
    // #include<stdio.h>
    int single_line_comment=0;
    int multiple_line_comments=0;
    
%}
  
%%
"//".* {single_line_comment++;}
[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/] {multiple_line_comments++;}
%%
  
int yywrap(){}
   
int main()
{
    extern FILE *yyin, *yyout;
    yyin = fopen("input.txt", "r");
    yyout=fopen("output.txt","w");
    yylex();
    fclose(yyin);

    
    printf("Comments: %d\n",single_line_comment);
    printf("Multiple line comments: %d",multiple_line_comments);
    return 0;
}