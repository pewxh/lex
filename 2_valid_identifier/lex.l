/*	Design a LEX code to identify and print valid Identifiers of C/C++ lang in a given input pattern 
*/

%{
#include<stdio.h>
%}

%%
^[a-zA-Z_][_0-9A-Za-z]* 	printf("VALID");
^[^_A-Za-z].*			printf("INVALID");
.				;
%%

int yywrap(void){
	return 1;
}

int main(){
	yylex();
	return 0;
}
