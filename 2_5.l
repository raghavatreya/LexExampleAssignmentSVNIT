%{
int positive=0;
int zeros=0;
int negative=0;
%}
zero [0]
digit [0-9]
plus [+]
minus [-]
dot [.]
%%
({plus}|{minus})?{zero}+{dot}?{zero}* {printf("zero");zeros++;}
{plus}?{digit}+{dot}?{digit}+ {printf("positive");positive++;}
{minus}{digit}+{dot}?{digit}+ {printf("negative");negative++;}
%%
int main() {
	yylex();
	printf("positive: %d\n",positive);
	printf("zeros: %d\n",zeros);
	printf("negatives: %d\n",negative);
	return 0;
	}
