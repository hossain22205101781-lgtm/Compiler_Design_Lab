%{
#include "veraz_parser.tab.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}

%option noyywrap

%%

"banao"          { return BANAO; }
"List"           { return LIST; }
"addKor"         { return ADDKOR; }
"removeKor"      { return REMOVEKOR; }
"sortKor"        { return SORTKOR; }
"filterKor"      { return FILTERKOR; }
"showKor"        { return SHOWKOR; }
"if"             { return IF; }
"else"           { return ELSE; }
"end"            { return END; }
"for"            { return FOR; }
"pratek"         { return PRAATEK; }
"true"           { return TRUE; }
"false"          { return FALSE; }
"loop"           { return LOOP; }
"jotokkhon"      { return JOTOKKHON; }
"read"           { return READ; }
"print"          { return PRINT; }
"=="             { return EQEQ; }
"="              { return EQUALS; }
","              { return COMMA; }
";"              { return SEMICOLON; }
"("              { return LPAREN; }
")"              { return RPAREN; }
"{"              { return LBRACE; }
"}"              { return RBRACE; }
"["              { return LBRACK; }
"]"              { return RBRACK; }

[0-9]+           { yylval.ival = atoi(yytext); return INTEGER; }
[a-zA-Z][a-zA-Z0-9]*  { yylval.str = strdup(yytext); return IDENTIFIER; }
"\""[^\"\n]*"\""  {
					/* strip surrounding quotes into yylval.str */
					int len = yyleng;
					if (len >= 2) {
						char *tmp = (char*)malloc(len-1);
						strncpy(tmp, yytext+1, len-2);
						tmp[len-2] = '\0';
						yylval.str = tmp;
					} else {
						yylval.str = strdup("");
					}
					return STRING;
				  }
[ \t\n\r]+        { /* Ignore whitespace */ }
.                { return yytext[0]; }

%%
