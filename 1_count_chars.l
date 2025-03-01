/* 
   Design a LEX Code to count the number of lines, spaces, tab-meta characters, 
   and other characters in the given input pattern.
*/

%{
#include <stdio.h>

int lines = 0, spaces = 0, tabs = 0, chars = 0;
%}
%%

\n      { lines++; chars++; }
\t      { tabs++; chars++; }
" "     { spaces++; chars++; }
.       { chars++; }

%%

int main() {
    yylex();
    printf("Lines: %d\nSpaces: %d\nTabs: %d\nChars: %d\n", lines, spaces, tabs, chars);
    return 0;
}

int yywrap() {
    return 1; 
}
