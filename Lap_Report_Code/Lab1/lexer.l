%{
#include <stdio.h>
%}

%option noyywrap

%%
^[a-zA-Z_][a-zA-Z0-9_]*[0-9]$  { printf("Matched: %s\n", yytext); }
.|\n                           { /* Ignore any other characters or newlines */ }
%%

int main(int argc, char **argv) {
    if (argc > 1) {
        FILE *f = fopen(argv[1], "r");
        if (!f) { perror(argv[1]); return 1; }
        yyin = f;
    }
    yylex();    // Start the lexical analysis
    return 0;
}
