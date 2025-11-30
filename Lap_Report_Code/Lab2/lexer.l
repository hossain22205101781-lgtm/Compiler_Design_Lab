%{
#include <stdio.h>

/* minimal declarations so compiler is happy */
extern FILE *yyin;
struct yy_buffer_state;
extern struct yy_buffer_state *yy_scan_string(const char *);
extern void yy_delete_buffer(struct yy_buffer_state *);
%}

%option noyywrap

%%

x+      { printf("x+: %s\n", yytext); }
x+y+    { printf("x+y+: %s\n", yytext); }
xyz     { printf("xyz: %s\n", yytext); }

.|\n   { /* ignore other chars/newlines */ }

%%

int main(int argc, char **argv){
    if(argc>1){
        FILE *f = fopen(argv[1], "r");
        if(f){ yyin = f; yylex(); fclose(f); return 0; }
        struct yy_buffer_state *bp = yy_scan_string(argv[1]);
        yylex(); yy_delete_buffer(bp); return 0;
    }
    yylex();
    return 0;
}
