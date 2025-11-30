# Flex Lexer - Pattern Matcher

A simple lexical analyzer using Flex to recognize three types of string patterns.

## Patterns

1. **Pattern 1: `x+`** - One or more 'x' characters
   - Examples: `x`, `xx`, `xxx`

2. **Pattern 2: `x+y+`** - One or more 'x' followed by one or more 'y'
   - Examples: `xy`, `xyyy`, `xxyyy`

3. **Pattern 3: `xyz`** - Exactly 'x', 'y', 'z' in that order
   - Examples: `xyz`, `xyzabc` (matches the `xyz` part)

## Build

```bash
flex lexer.l && cc lex.yy.c -o lexer
```

## Run

```bash
./lexer < tests.txt
# or
cat tests.txt | ./lexer
```

## Files

- `lexer.l` - Flex source code
- `lexer` - Compiled executable
- `tests.txt` - Test cases


command:
flex lexer.l
clang lex.yy.c -o lexer
./lexer tests.txt        # File argument দিয়ে
./lexer < tests.txt      # stdin redirect দিয়ে