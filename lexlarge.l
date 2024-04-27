%{ 
#include <stdio.h> 
#include <string.h> 

#define MAX_LEN 100 // Maximum length of a word 
char largest_word[MAX_LEN + 1]; // To store the largest word found

void update_largest_word(const char *word) { 
if (strlen(word) > strlen(largest_word)) 
strcpy(largest_word, word); 
} 
%} 

%% 
[a-zA-Z]+ {
update_largest_word(yytext); 
} 

\n { 
if (strlen(largest_word) > 0) 
printf("Largest word: %s\n", largest_word); 
strcpy(largest_word, ""); // Reset largest word for next line 
} 
. ; // Ignore all other characters
%% 
int main() { 
yylex(); 
return 0; 
}
