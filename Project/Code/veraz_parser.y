%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int yylex();
extern char *yytext;

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

%}

%union {
    int ival;
    char* str;
}

%token <ival> INTEGER
%token <str> IDENTIFIER STRING
%token BANAO LIST ADDKOR REMOVEKOR SORTKOR FILTERKOR SHOWKOR IF ELSE END FOR PRAATEK TRUE FALSE LOOP JOTOKKHON READ PRINT
%token EQEQ LBRACK RBRACK
%token EQUALS COMMA SEMICOLON LPAREN RPAREN LBRACE RBRACE

%start program

%%

program:
    statements
    ;

statements:
    statements statement
    | statement
    ;

statement:
    variable_declaration
    | assignment
    | print_statement
    | if_statement
    | loop_statement
    ;

variable_declaration:
    BANAO LIST IDENTIFIER EQUALS LBRACK list_values RBRACK SEMICOLON {
        printf("Declaring list: %s\n", $3);
    }
    | BANAO IDENTIFIER IDENTIFIER EQUALS INTEGER SEMICOLON {
        /* allow: banao int var = 100; (keyword 'int' treated as identifier token) */
        printf("Declaring integer: %s = %d\n", $3, $5);
    }
    ;

list_values:
    STRING
    | list_values COMMA STRING
    ;

assignment:
    IDENTIFIER EQUALS INTEGER SEMICOLON {
        printf("Assigning integer to %s: %d\n", $1, $3);
    }
    ;

print_statement:
    PRINT LPAREN STRING RPAREN SEMICOLON {
        printf("Printing: %s\n", $3);
    }
    | SHOWKOR STRING SEMICOLON {
        printf("Showing: %s\n", $2);
    }
    ;

if_statement:
    IF LPAREN condition RPAREN LBRACE statements RBRACE ELSE LBRACE statements RBRACE {
        printf("If statement\n");
    }
    ;

condition:
    IDENTIFIER EQEQ INTEGER {
        printf("Condition check: %s == %d\n", $1, $3);
    }
    ;

loop_statement:
    LOOP LPAREN condition RPAREN LBRACE statements RBRACE {
        printf("Looping...\n");
    }
    ;

%%

int main() {
    printf("VeraZ Compiler\n");
    yyparse();
    return 0;
}
