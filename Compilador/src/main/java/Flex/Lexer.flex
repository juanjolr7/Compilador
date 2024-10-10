package Flex;
import static Tokens.Tokens.*;
%%
%class Lexer
%type Tokens
I=[a-zA-Z_][a-zA-Z_0-9]* 
N="-"?[0-9]+
NF="-"?[0-9]+(\.[0-9]+)
TE=\"[^\"]*\"
C=\'([^\\']|\\[btnfr\\"']|\\u[0-9a-fA-F]{4})\'
espacio=" "//[ \t\n\r]+
comentariomul="/*"([^*]|\*+[^/])*\*+"/"
comentario="//"[^\n]*
%{
    public String lexeme;
%}
%%
"int" { lexeme=yytext(); return INT; }
"float" { lexeme=yytext(); return FLOAT; }
"double" { lexeme=yytext(); return DOUBLE; }
"boolean" { lexeme=yytext(); return BOOLEAN; }
"String" { lexeme=yytext(); return STRING; }
"public" { lexeme=yytext(); return PUBLIC; }
"private" { lexeme=yytext(); return PRIVATE; }
"protected" { lexeme=yytext(); return PROTECTED; }
"if" { lexeme=yytext(); return IF; }
"else" { lexeme=yytext(); return ELSE; }
"while" { lexeme=yytext(); return WHILE; }
"for" { lexeme=yytext(); return FOR; }
"return" { lexeme=yytext(); return RETURN; }
"case" { lexeme=yytext(); return CASE; }
"break" { lexeme=yytext(); return BREAK; }
"null" { lexeme=yytext(); return NULL; }
"void" { lexeme=yytext(); return VOID; }
"new" { lexeme=yytext(); return NEW; }
"abstract" { lexeme=yytext(); return ABSTRACT; }
"interface" { lexeme=yytext(); return INTERFACE; }
"try" { lexeme=yytext(); return TRY; }
"catch" { lexeme=yytext(); return CATCH; }
"finally" { lexeme=yytext(); return FINALLY; }
"exception" { lexeme=yytext(); return EXCEPTION; }
"class" { lexeme=yytext(); return CLASS; }
"continue" { lexeme=yytext(); return CONTINUE; }
"do" { lexeme=yytext(); return DO; }
"==" { lexeme=yytext(); return EQUAL; }
"!=" { lexeme=yytext(); return NEGATION; }
"<" { lexeme=yytext(); return LOWER; }
">" { lexeme=yytext(); return GREATER; }
"<=" { lexeme=yytext(); return LOWEREQUAL; }
">=" { lexeme=yytext(); return EQUAL; }
"=" { lexeme=yytext(); return ASIGNATION; }
"+" { lexeme=yytext(); return PLUS; }
"-" { lexeme=yytext(); return MINUS; }
"*" { lexeme=yytext(); return MUL; }
"/" { lexeme=yytext(); return DIV; }
"%" { lexeme=yytext(); return MOL; }
"++" { lexeme=yytext(); return PLUSPLUS; }
"--" { lexeme=yytext(); return MINUSMINUS; }
"||" { lexeme=yytext(); return OR; }
"&&" { lexeme=yytext(); return AND; }
"=+" { lexeme=yytext(); return ASIGPLUS; }
"=-" { lexeme=yytext(); return ASIGMIN; }
"=*" { lexeme=yytext(); return ASIGMUL; }
"=/" { lexeme=yytext(); return ASIGDIV; }
{espacio} {/*Ignore*/}
{comentariomul} {/*Ignore*/}
{comentario} {/*Ignore*/}
{N} { lexeme=yytext(); return NUMBER; }
{NF} { lexeme=yytext(); return NUMBERF; }
{I} { lexeme=yytext(); return IDENTIFIER; }
{TE} { lexeme=yytext(); return TEXT; }
{C} { lexeme=yytext(); return CHARAT; }
 . { lexeme=yytext();return ERROR;}

