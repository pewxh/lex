/*
	Design a LEX code for Tokenizing ( identify and print operators, seperators, keywords, identifiers ) C code
*/

%{
#include<stdio.h>
%}

%%
int|float|char|long|double|include|define|typedef|main|if|else|for|while|return|struct|goto	printf("Keyword");
[,;{}()]	  printf("Seperator");
[+-/=%*]	          printf("Operator");
^[_a-zA-Z][a-zA-Z0-9_]*  printf("Identifier");
.		;
%%

int yywrap(){
	return 1;
}

int main(){
	yylex();
	return 0;
}
