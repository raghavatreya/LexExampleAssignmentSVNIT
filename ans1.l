%{
#include<stdio.h>
%}
%%
if|else|while|break|case|continue|do|default|const|enum|return|signed|static|short|sizeof|union|typedef|int|switch|for|char|double|float|struct|void|long|goto  {printf("keyword");}
[0-9]* {printf("constant number");}
[_a-zA-Z]([_a-zA-Z0-9])* {printf("identifier");}
.* {printf("invalid");}
%%
main()
{
yylex();
return 0;
}



//
l [0-9a-zA-Z \t\n]
a [/]
b [*]

%%
{a}{b}({l})*{b}{a} {printf("++");}
%%

int main() {
	yylex();
	return 0;
}

//

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

