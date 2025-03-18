%{
#include<stdio.h>
int vow = 0, con = 0;
%}
%%
[aeiouAEIOU]  { vow++; }
[a-zA-Z]      { con++; }
[^a-zA-Z]     { } 
%%
int main(){
    printf("Enter a string: ");
    yylex();
    printf("Vowels: %d\nConsonants: %d\n", vow, con - vow);
    return 0;
}
int yywrap() {
    return 1;
}
