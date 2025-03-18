%{
 #include<stdio.h>
%}
%%
[0-9]*[02468]   {printf("even");}
[0-9]*[13579]     {printf("odd");}
.* {printf("not valid");}
%%
int main(){
yylex();
return 0;
}
int yywrap()
{
return 1;
}