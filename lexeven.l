%{ 
#include <stdio.h> 
%} 
%% 
[0-9]+ { int num = atoi(yytext); 
if (num % 2 == 0) 
printf("%d is an even number.\n", num); 
else printf("%d is an odd number.\n", num); 
} 
%% 
int main() { 
yylex(); 
return 0;
}
