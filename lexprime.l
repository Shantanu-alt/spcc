%{ 
#include <stdio.h> 
int is_prime(int n) { 
if (n <= 1) 
return 0; // Not prime 
for (int i = 2; i * i <= n; i++) {
 if (n % i == 0) 
return 0; // Not prime
 } 
return 1; // Prime
 } 
%} 

%% 
[0-9]+ { 
int num = atoi(yytext);
 if (is_prime(num))
 printf("%d is a prime number.\n", num);
 else 
printf("%d is not a prime number.\n", num); 
} 
%% 
int main() {
 yylex();
 return 0;
 }
