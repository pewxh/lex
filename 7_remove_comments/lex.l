/*
	Design a LEX code to remove comments from C/C++ Program given at runtime and store into 'out.c' program file.
*/

%{
#include<stdio.h>
%}

%%
\/\/(.*)            fprintf(yyout,"");
\/\*(.*\n)*.*\*\/   fprintf(yyout,"");
.		fprintf(yyout,"%s",yytext);
%%

int yywrap(){
	return 1;
}

int main(){
	yyout = fopen("out.c","w");
	yylex();
	return 0;
}
