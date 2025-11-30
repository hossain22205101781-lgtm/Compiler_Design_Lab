%{
#include "parser.tab.h"
#include <stdio.h>
#include <stdlib.h>
%}

%%

[0-9]+(\.[0-9]+)?    { yylval.d = atof(yytext); return NUMBER; }
[ \t]+               { /* skip whitespace */ }
\n                   { return '\n'; }
"+"                  { return '+'; }
"-"                  { return '-'; }
"*"                  { return '*'; }
"/"                  { return '/'; }
"("                  { return '('; }
")"                  { return ')'; }
.                    { fprintf(stderr, "Unknown character: %s\n", yytext); }

%%

int yywrap(void) { return 1; }
