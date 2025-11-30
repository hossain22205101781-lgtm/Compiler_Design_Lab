%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);
%}

%union {
    double d;
}

%token <d> NUMBER
%left '+' '-'
%left '*' '/'
%right UMINUS

%type <d> expr

%%

input:
    /* empty */
  | input line
;

line:
    '\n'
  | expr '\n' { printf("Result: %g\n", $1); }
;

expr:
    expr '+' expr { $$ = $1 + $3; }
  | expr '-' expr { $$ = $1 - $3; }
  | expr '*' expr { $$ = $1 * $3; }
  | expr '/' expr {
        if ($3 == 0) { yyerror("division by zero"); $$ = 0; }
        else $$ = $1 / $3;
    }
  | '(' expr ')' { $$ = $2; }
  | '-' expr %prec UMINUS { $$ = -$2; }
  | NUMBER { $$ = $1; }
;

%%

extern FILE *yyin;

void yyerror(const char *s) { fprintf(stderr, "Error: %s\n", s); }

int main(int argc, char *argv[]) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");
        if (!file) {
            fprintf(stderr, "Error: Cannot open file %s\n", argv[1]);
            return 1;
        }
        yyin = file;
    }
    return yyparse();
}
