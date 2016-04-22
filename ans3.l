%{
#include<stdio.h>
#include<string.h>
int num_lines = 0, num_chars = 0, num_words =0,num_spaces=0;
%}
%%

\n  ++num_lines;
[^" ""\t""\n"]+ ++num_words; num_chars+=yyleng;
[\t '']   ++num_spaces;

%%
int main ()
	{
       
       yylex ();
       
	printf ("There were %d lines and %d characters and %d words and %d spaces.\n",
		num_lines, num_chars, num_words, num_spaces);
	return 0;
	}


