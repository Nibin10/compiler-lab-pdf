%{
#include<stdio.h>
int odd=0,even=0;
%}
%%
[0-9]+ {if (atoi(yytext)%2==0)
{
even++;
}
else
{
odd++;}
}
. ;
%%
int main()
{
yyin=fopen("sampleoddeven.txt","r");
yylex();
printf("odd numbers:%d\n",odd);
printf("even number:%d\n",even);
}
int yywrap()
{
return 1;
}
