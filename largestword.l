%{
#include<stdio.h>
int large=0;
%}
%%
[a-zA-Z]* {if (yyleng>large)
{
large=yyleng;
}}
\n {return 0;}
. ;
%%
int main()
{
printf("Enter the string:");
yylex();
printf("%d\n",large);
}
int yywrap()
{
return 1;
}
