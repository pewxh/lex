/*	Design a lex code to count the number of lines,spaces , tab-meta character and rest of characters in a given input pattern */

%{
#include<stdio.h>
int total_lines = 0, total_spaces = 0 , total_tabs = 0 , total_characters = 0;
// Global variables
%}

%%
\n	{ total_lines++; }
" "      { total_spaces++; }
\t	{ total_tabs++; }
.	{ total_characters++; }
%%

int yywrap(void){
	return 1;
}

int main(){
	yylex();
	printf("\n");
	printf(" Number of lines : %d \n", total_lines++);
	printf(" Number of spaces : %d \n", total_spaces++);
	printf(" Number of tabs : %d \n", total_tabs++);
	printf(" Number of characters : %d \n", total_characters++);
	return 0;
}
