/*  
   LEX program to replace multiple white spaces (spaces and tabs) 
   in 'input.txt' with a single blank space and store the result in 'output.txt'.
*/

%{
#include <stdio.h>  // Include standard input-output library
%}

%%

// Match spaces and tab characters and replace them with a single space
[ \t]+ { fprintf(yyout, " "); }  

// Match any other characters and print them as is
. { fprintf(yyout, "%s", yytext); }  

// Preserve newlines to maintain line structure
\n { fprintf(yyout, "\n"); }

%%

int main() {
    // Open input file for reading and output file for writing
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");

    // Check if files opened successfully
    if (!yyin || !yyout) {
        printf("Error opening files.\n");
        return 1;
    }

    // Process the file
    yylex();

    // Close files
    fclose(yyin);
    fclose(yyout);
    
    printf("Processing completed. Check 'output.txt'.\n");
    
    return 0;
}

// Function to handle end-of-file condition
int yywrap() {
    return 1;
}
