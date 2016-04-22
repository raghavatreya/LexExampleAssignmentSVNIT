Oct [0][0-7]+
Hex [0][x|X][0-9A-Fa-f]+
%%

{Hex} printf("this is a hexadecimal number\n");
{Oct} printf("this is an octal number\n");
. printf("error\n");
%%

int main()
{
yylex();
return 0;
}