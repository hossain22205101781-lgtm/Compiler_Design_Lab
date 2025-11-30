# Calculator with Flex & Bison

Build and run:

```bash
cd /Users/shahariar13/Documents/Fall_25/Others/CompilerDesignLab/Lap_Report_Code/Lab3
bison -d parser.y && flex lexer.l && cc lex.yy.c parser.tab.c -o parser
# or simply `make` if you have make
./parser
```

Examples (type an expression followed by Enter):

- `3+4*2` prints `11`
- `(1+2)*3` prints `9`
- `-5 + 2` prints `-3`

Notes:
- Supports `+ - * /`, parentheses, unary minus, and floating point numbers.
- Operator precedence is handled in the grammar (`*` and `/` bind tighter than `+` and `-`).

flex lexer.l
bison -d parser.y

