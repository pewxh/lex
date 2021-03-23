/*
	Design a LEX code to replace white spaces of 'Input.txt' file by a single blank character into 'Output.txt' file.
*/

%{
#include<stdio.h>
%}

%%
[\t\n" "]+ fprintf(yyout,"");
.        fprintf(yyout,"%s",yytext);
%%

int yywrap(){
	return 1;
}

int main(){
	yyin = fopen("Input.txt","r");
	yyout = fopen("Output.txt","w");
	yylex();
	fprintf(yyout,"\n"); //Appending new line at the EOF
	return 0;
}
