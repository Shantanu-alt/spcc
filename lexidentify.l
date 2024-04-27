%{ 
#include <stdio.h> 
%} 

%% 

int|float|char { printf("Keyword: %s\n", yytext); } 
[a-zA-Z][a-zA-Z0-9]* { printf("Identifier: %s\n", yytext); }
 .|\n     { /* ignore other characters */ } 

%% 
int yywrap() {
 return 1; }
 int main() {
 yylex();
 return 0; 
} 
