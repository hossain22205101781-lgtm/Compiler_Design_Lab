VeraZ Compiler - Minimal README

Build:

```bash
bison -d veraz_parser.y -o veraz_parser.tab.c
flex veraz_lexer.l
clang -o veraz_compiler lex.yy.c veraz_parser.tab.c
```

Run example:

```bash
./veraz_compiler < example.veraz
```

Notes:
- Requires `flex`, `bison`, and a C compiler (e.g., `clang`).
- On macOS you can install missing tools with Homebrew, e.g. `brew install flex bison`.
- The lexer uses `%option noyywrap`, so you don't need to link `-lfl`.

That's it — very simple. If you want the README in Bengali or want extra details (AST, tests), tell me and I'll update it.