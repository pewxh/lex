/*
	Design a LEX code to identify and print integer and float values in given input pattern
*/

%{
	#include<stdio.h>
%}

%%
[+-]?[0-9]*	printf("INTEGER");
[+-]?[0-9]*+[.][0-9]+ printf("FLOAT");
[a-zA-Z]*	printf("INVALID");
.		;
%%

int yywrap(void){
	return 1;
}

int main(){
	yylex();
	return 0;
}
