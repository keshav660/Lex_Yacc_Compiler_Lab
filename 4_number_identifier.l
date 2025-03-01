/* 
   LEX Program to identify and print integer and float values in a given input pattern.
*/

%{
#include <stdio.h>  // Include standard I/O library
%}

%%


[0-9]+      { printf("This is an integer.\n"); }
[0-9]*\.[0-9]+ { printf("This is a floating number.\n"); }
.           { printf("Not a valid number.\n"); }

%%

int main() {
    printf("Enter the number you want to check: "); 
    yylex();  // Convert input into a stream of tokens
    return 0;
}

// Function to indicate the end of input
int yywrap() {
    return 1;
}
