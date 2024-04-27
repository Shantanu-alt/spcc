%{ 
#include <stdio.h> 
int vow_count=0;
%} 

%% 
[aeiouAEIOU] {vow_count++;} 
 .      ;//Ignore any other character 
%% 

int main()
 { 
char input[100];
 printf("Enter the string of vowels: "); 
 fgets(input, sizeof(input), stdin); 
 yy_scan_string(input);
 yylex();
 printf("Number of vowels: %d\n", vow_count); 
 return 0; 
}
