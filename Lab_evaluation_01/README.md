# Calculator

A simple arithmetic expression calculator built with Flex and Bison.

## Build

```bash
flex lexer.l
bison -d simple.y
gcc lex.yy.c simple.tab.c -o calculator
```

## Run

```bash
./calculator
```

Then enter expressions one by one and press Enter to see results.

Example:
```
2 + 3 * 4
14
(5 + 3) * 2
16
```

Press `Ctrl+D` to exit.

