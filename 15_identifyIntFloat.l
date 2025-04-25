%{
#include <stdio.h>
%}
%S A B C D Y Z
%%
<INITIAL>[A-Za-z]        BEGIN C;
<INITIAL>[0-9]           BEGIN A;
<INITIAL>[.]             BEGIN D;
<INITIAL>[^A-Za-z0-9.\n] BEGIN Y;
<INITIAL>\n              BEGIN INITIAL; printf("Not accepted\n");
<A>[0-9]                 BEGIN A;
<A>[.]                   BEGIN B;
<A>[A-Za-z_]             BEGIN Y;
<A>[^A-Za-z0-9.\n]       BEGIN Z;
<A>\n                    BEGIN INITIAL; printf("Integer\n");
<B>[A-Za-z_]             BEGIN Y;
<B>[0-9]                 BEGIN B;
<B>[^A-Za-z0-9.\n]       BEGIN Z;
<B>\n                    BEGIN INITIAL; printf("Float\n");
<C>[0-9]                 BEGIN C;
<C>[A-Za-z]              BEGIN C;
<C>[_.]                  BEGIN C;
<C>[^A-Za-z0-9.\n]       BEGIN Y;
<C>\n                    BEGIN INITIAL; printf("Identifier\n");
<D>[0-9]                 BEGIN B;
<D>[A-Za-z]              BEGIN Y;
<D>[^A-Za-z0-9.\n]       BEGIN Z;
<D>\n                    BEGIN INITIAL; printf("Not Accepted\n"); 
<Y>[A-Za-z0-9_.]         BEGIN Y;
<Y>[^A-Za-z0-9.\n]       BEGIN Z;
<Y>\n                    BEGIN INITIAL; printf("Not Accepted\n");      

<Z>\n                    BEGIN INITIAL; printf("Not Accepted\n");
%%

int main() {
    printf("Enter the char [A-Za-z0-9._] only:\n");
    yylex();
    return 0;
}

int yywrap() {
    
    return 1;
}
