%{
	#include<stdio.h>
	int key =0;
%}
lowercase [a-z]
uppercase [A-Z]
%%
{uppercase} {printf("%c",(((yytext[0]-65+key)%26)+65));}
{lowercase} {printf("%c",(((yytext[0]-97+key)%26)+97));}
%%
int main()
{
	printf("enter a key: ");
	scanf("%d",&key);
	if (key<0)
	{
		key = -(key);
		key = key%26;
		key = 26-key;
	}
	printf("\nEnter a string and press enter: ");
	yylex();
	return 0;
}
