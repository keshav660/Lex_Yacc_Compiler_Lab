/*  
   LEX program to count and print the number of characters, words, 
   and whitespace (including newlines) in a given "input.txt" file.
*/

%{
#include <stdio.h>  // Include standard input-output library

// Initialize counters for lines, words, and characters
int lines = 0, words = 0, chars = 0;
%}

%%

// Count new lines
\n { lines++; chars++; }

// Count spaces and tab characters
[ \t]+ { chars++; }  

// Count words (a sequence of alphanumeric characters)
[a-zA-Z0-9]+ { words++; chars += yyleng; }  

// Count other characters (punctuation, symbols, etc.)
. { chars++; }

%%

int main() {
    // Open the input file
    yyin = fopen("input.txt", "r");
    if (!yyin) {
        printf("Error opening file.\n");
        return 1;
    }

    // Process the file
    yylex();

    // Print the results after processing
    printf("Lines: %d\nWords: %d\nCharacters: %d\n", lines, words, chars);

    // Close the file
    fclose(yyin);
    
    return 0;
}

// Function to indicate the end of input
int yywrap() {
    return 1;
}
