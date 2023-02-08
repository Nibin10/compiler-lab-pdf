%{
#include<stdio.h>
int pcount=0,ncount=0;
%}
%%
"+"[0-9]+ {pcount++;}
"-"[0-9]+ {ncount++;}
[0-9]+ {pcount++;}
. ;
%%
int main()
{
yyin=fopen("sample.txt","r");
yylex();
printf("postive numbers :%d\n",pcount);
printf("negative numbers :%d\n",ncount);
}
int yywrap()
{
return 1;
}
