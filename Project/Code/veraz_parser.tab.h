/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INTEGER = 258,
     IDENTIFIER = 259,
     STRING = 260,
     BANAO = 261,
     LIST = 262,
     ADDKOR = 263,
     REMOVEKOR = 264,
     SORTKOR = 265,
     FILTERKOR = 266,
     SHOWKOR = 267,
     IF = 268,
     ELSE = 269,
     END = 270,
     FOR = 271,
     PRAATEK = 272,
     TRUE = 273,
     FALSE = 274,
     LOOP = 275,
     JOTOKKHON = 276,
     READ = 277,
     PRINT = 278,
     EQEQ = 279,
     LBRACK = 280,
     RBRACK = 281,
     EQUALS = 282,
     COMMA = 283,
     SEMICOLON = 284,
     LPAREN = 285,
     RPAREN = 286,
     LBRACE = 287,
     RBRACE = 288
   };
#endif
/* Tokens.  */
#define INTEGER 258
#define IDENTIFIER 259
#define STRING 260
#define BANAO 261
#define LIST 262
#define ADDKOR 263
#define REMOVEKOR 264
#define SORTKOR 265
#define FILTERKOR 266
#define SHOWKOR 267
#define IF 268
#define ELSE 269
#define END 270
#define FOR 271
#define PRAATEK 272
#define TRUE 273
#define FALSE 274
#define LOOP 275
#define JOTOKKHON 276
#define READ 277
#define PRINT 278
#define EQEQ 279
#define LBRACK 280
#define RBRACK 281
#define EQUALS 282
#define COMMA 283
#define SEMICOLON 284
#define LPAREN 285
#define RPAREN 286
#define LBRACE 287
#define RBRACE 288




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 15 "veraz_parser.y"
{
    int ival;
    char* str;
}
/* Line 1529 of yacc.c.  */
#line 120 "veraz_parser.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

