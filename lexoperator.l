%{ 
/* Definitions Section */ 
%}
/* Regular Definitions */ 
%% 
"+"  { printf("ADD\n"); }
"-"  { printf("SUB\n"); }
"*"  { printf("MUL\n"); } 
"/"   { printf("DIV\n"); }
"%"   { printf("MOD\n"); }
"="   { printf("ASSIGN\n"); } 
"=="  { printf("EQUAL\n"); }
"!="  { printf("NOT_EQUAL\n"); }
"<"   { printf("LESS_THAN\n"); }
">"   { printf("GREATER_THAN\n"); }
"<="  { printf("LESS_THAN_EQUAL\n"); }
">="  { printf("GREATER_THAN_EQUAL\n"); }
"&&"   { printf("LOGICAL_AND\n"); }
"||"  { printf("LOGICAL_OR\n"); }
"!"   { printf("LOGICAL_NOT\n"); } 
.   { printf("UNKNOWN\n"); } /* Catch-all for unrecognized characters */ 

%% 

/* User Code Section */
int main() { 
yylex(); 
return 0;
}
