/*
	Design a LEX code to count and print the number of total characters , words and white spaces in given 'Input.txt' file.
*/

%{
#include<stdio.h>
int total_chars = 0,total_words=0,total_spaces=0;
%}

%%
" " {	total_spaces++; total_words++; }
[\t\n] total_words++;
[^\n\t] total_chars++;
%%

int yywrap(){
	return 1;
}

int main(){
	yyin = fopen("Input.txt","r");
	yylex();
	printf("Number of Characters : %d \n",total_chars);
	printf("Number of Words : %d \n",total_words);
	printf("Number of Spaces : %d \n",total_spaces);
	return 0;
}
