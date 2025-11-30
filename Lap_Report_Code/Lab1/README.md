# Flex lexer: recognize identifiers that end with a digit

This folder contains a small Flex lexer (`lexer.l`) that recognizes strings with the following rules:

- Starts with a letter (`A-Z` or `a-z`) or underscore (`_`)
- Followed by zero or more letters, digits, or underscores
- Must end with a digit (`0-9`)

Files:

- `lexer.l` — the Flex source

Build:

On most systems (Linux):

```bash
flex lexer.l
cc lex.yy.c -o lexer -lfl
```

On macOS (if `-lfl` is not available, try without it):

```bash
flex lexer.l
cc lex.yy.c -o lexer
```

Run:

- Read from stdin:

```bash
echo "abc_123" | ./lexer
```

- Read from a file:

```bash
./lexer tests.txt
```

Examples (input -> program output):

- `a1` -> `Valid: a1`
- `_var9` -> `Valid: _var9`
- `a_bc` -> `Invalid: a_bc`  (does not end with digit)
- `1abc9` -> `Invalid: 1abc9` (does not start with letter/underscore)

Notes:

- The lexer treats each line independently. Blank lines are ignored.
- The rule used is anchored to the whole line: `^[A-Za-z_][A-Za-z0-9_]*[0-9]$`.


command:
flex lexer.l
clang lex.yy.c wrap.c -o lexer
./lexer tests.txt