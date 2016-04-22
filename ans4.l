%{
#include<stdio.h>
#include<string.h>
int num_identifier = 0,num=0;
%}
%%
^("int"|"float"|"char"|"double")" "[_a-z0-9]+    ++num_identifier;
","[a-z0-9]+        ++num_identifier;    
.
%%
int main ()
	{
       
       yylex ();
       
	printf("number of identifier is %d\n",num_identifier);
	return 0;
	}

