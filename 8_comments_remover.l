%{
#include <stdio.h>
%}

%%
"//".*                  {  }
"/*"[^*]*"*/"      {  }
.                               { fprintf(yyout, "%s", yytext); }
\n                              { fprintf(yyout, "\n"); }
%%
int main() {
    yyin = fopen("out1.c", "r");  
    yyout = fopen("out.c", "w");   
    yylex();  
    
    fclose(yyin);
    fclose(yyout);
 
    printf("Comments removed successfully. Check 'out.c'.\n");
    
    return 0;
}

int yywrap() {
    return 1;
}
