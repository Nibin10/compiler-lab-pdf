%{
#include<stdio.h>
%}
%%
"//"[a-zA-Z0-9\t" "]* {yytext=" ";}
"/*"[a-zA-Z0-9\n\t" "]*"*/" {yytext=" ";}
.* printf("%s",yytext);;
%%
int main()
{
yyin=fopen("samplecoment.txt","r");
yylex();
}
int yywrap()
{
return 1;
}
