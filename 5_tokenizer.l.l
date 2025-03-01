/* 
   LEX Program for Tokenizing: Identify and print OPERATORS, SEPARATORS, 
   KEYWORDS, and IDENTIFIERS from the given input.
*/

%{
#include <stdio.h>  // Include standard input-output header file
%}

%%

// Define keywords
"int"|"float"|"if"|"else"|"return"|"for"|"while"|"switch"|"case"  { printf("%s : Keyword\n", yytext); }

// Define identifiers (variable/function names)
[a-zA-Z_][a-zA-Z0-9_]*  { printf("%s : Identifier\n", yytext); }

// Define integer numbers
[0-9]+  { printf("%s : Integer\n", yytext); }

// Define floating-point numbers
[0-9]*\.[0-9]+  { printf("%s : Floating Number\n", yytext); }

// Define operators
[+\-*/=<>]  { printf("%s : Operator\n", yytext); }

// Define separators
[;,(){}]  { printf("%s : Separator\n", yytext); }

%%

int main() { 
    printf("Enter input:\n"); 
    yylex();  // Tokenize the input

    return 0; 
}

// Function to indicate the end of input
int yywrap() {
    return 1;
}
