%{
#include<stdio.h>
int k=0,c=0,i=0,s=0,l=0;
%}
%%
auto|switch|if|else|int      {fprintf(yyout,"%s is a keyword\n",yytext);}
[0-9]+                       {fprintf(yyout,"%s is a constant\n",yytext);}
[a-zA-Z_]+[a-zA-Z0-9]*       {fprintf(yyout,"%s is an identifier\n",yytext);}
["][a-zA-Z]+["]              {fprintf(yyout,"%s is a string\n",yytext);}
[0-9]+(\.[0-9]+)?            {fprintf(yyout,"%s is a literal\n",yytext);}
%%
int main(){
    extern FILE *yyin, *yyout;
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
     printf("Lexical analysis successful! Check output.txt\n");
    return 0;
}
int yywrap() {
    return 1;
}
