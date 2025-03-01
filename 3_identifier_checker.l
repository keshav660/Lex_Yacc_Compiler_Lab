%{
#include <stdio.h>
%}

%%
[0-9]+      { printf("This is an integer.\n"); }
[0-9]*\ .[0-9]+ { printf("This is a floating number.\n"); }
.           { printf("Not a valid number.\n"); }
%%

int main() {
    printf("Enter the number you want to check: ");
    yylex(); // convert into stream of token ;  
    return 0;
}

int yywrap() {
    return 1;
}
