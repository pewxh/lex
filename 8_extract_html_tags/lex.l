/*
	Design a LEX code to extract all the HTML tags in the given HTML file at run time and store into Text file given at run time.
*/

%{
#include<stdio.h>
%}

%%
\<[^>]*\> fprintf(yyout,"%s \n",yytext);
.	;
%%

int yywrap(){
	return 1;
}

int main(){
	yyin = fopen("input.html","r");
	yyout = fopen("output.txt","w");
	yylex();
	return 0;
}
